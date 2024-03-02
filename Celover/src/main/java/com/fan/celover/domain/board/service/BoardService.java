package com.fan.celover.domain.board.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.board.dto.BoardAndReplyDetailResponseDto;
import com.fan.celover.domain.board.dto.BoardDetailResponseDto;
import com.fan.celover.domain.board.dto.BoardListResponseDto;
import com.fan.celover.domain.board.dto.EnrollBoardRequestDto;
import com.fan.celover.domain.board.dto.ReplyResponseDto;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.model.Reply;
import com.fan.celover.domain.board.repository.BoardRepository;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.attachment.dto.ReplyAttachmentResponseDto;
import com.fan.celover.global.attachment.model.Attachment;
import com.fan.celover.global.attachment.repository.AttachmentRepository;
import com.fan.celover.global.role.Category;
import com.fan.celover.global.role.Status;
import com.fan.celover.global.security.model.PrincipalDetails;
import com.fan.celover.global.tag.service.TagService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {

	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private AttachmentRepository attachmentRepository;
	
	@Autowired
	private TagService tagService;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@Transactional
	public Page<BoardListResponseDto> searchBoard(String keyword, Pageable pageable, String sort) {

		String orderBy = "b.id";
		
		System.out.println(sort);
		
		switch (sort) {
			case "lastest":
				orderBy = "b.id";
				break;
			case "recommend":
				orderBy = "likesCount";
				break;
			case "comment":
				orderBy = "replyCount";
				break;
			case "view":
				orderBy = "b.count";
				break;
			default:
				throw new IllegalArgumentException("잘못된 요청입니다!");
		}

		String sql = "SELECT b.id, b.title, b.content, b.type, b.count, u.nickName, b.createDate"
				+ ", IFNULL(r.replyCount, 0) AS replyCount"
				+ ", IFNULL(l.likesCount, 0) AS likesCount"
				+ ", GROUP_CONCAT(bt.tagName SEPARATOR ',') AS tagNames "
				+ "FROM board b "
				+ "LEFT JOIN user u ON (b.userId = u.id) "
				+ "LEFT JOIN ( "
				+ "SELECT boardId, count(id) AS replyCount "
				+ "FROM reply "
				+ "GROUP BY boardId "
				+ ") r ON (b.id = r.boardId) "
				+ "LEFT JOIN ( "
				+ "SELECT referenceId, count(id) AS likesCount "
				+ "FROM likes "
				+ "WHERE category = 0 "
				+ "GROUP BY referenceId "
				+ ") l on (b.id = l.referenceId) "
				+ "LEFT JOIN ( "
				+ "SELECT bt.id, bt.boardId, t.tagName "
				+ "FROM boardTag bt "
				+ "LEFT JOIN tag t "
				+ "ON (bt.tagId = t.id) "
				+ ") bt ON (b.id = bt.boardId) "
				+ "WHERE b.type = 'F' AND b.status = :status AND b.title LIKE CONCAT('%', :keyword, '%') "
				+ "GROUP BY b.id"
				+ ", b.title"
				+ ", b.content"
				+ ", b.type"
				+ ", b.count"
				+ ", u.nickName"
				+ ", b.createDate"
				+ ", replyCount"
				+ ", likesCount "
				+ "ORDER BY "
				+ orderBy
				+ " DESC, b.id DESC";
		
		Query query = entityManager.createNativeQuery(sql, BoardListResponseDto.class);
		
		query.setMaxResults(pageable.getPageSize());
		query.setFirstResult((int) pageable.getOffset());
		query.setParameter("status", Status.Y.toString());
		query.setParameter("keyword", keyword);
		
		List<BoardListResponseDto> myDtoList = query.getResultList();
		
	    String countSql = "SELECT COUNT(*) FROM (" + sql + ") AS countQuery";
	    Query countQuery = entityManager.createNativeQuery(countSql);
	    countQuery.setParameter("status", Status.Y.toString());
	    countQuery.setParameter("keyword", keyword);
	    
	    Long total = (Long) countQuery.getSingleResult();
	    
	    Page<BoardListResponseDto> pageResult = new PageImpl<>(myDtoList, pageable, total);
		
		return pageResult;
	}
	
	@Transactional
	public Board saveBoard(EnrollBoardRequestDto enrollBoardReq, User user) {

		// back에서 게시글 제목 null check
		if (enrollBoardReq.getTitle() == null || enrollBoardReq.getTitle().equals("")) {
			throw new IllegalArgumentException("제목을 입력해주세요.");
		}

		// back에서 게시글 내용 null check
		if (enrollBoardReq.getContent() == null || enrollBoardReq.getContent().equals("")) {
			throw new IllegalArgumentException("내용을 입력해주세요.");
		}

		Board newBoard = Board.builder().title(enrollBoardReq.getTitle()).content(enrollBoardReq.getContent())
				.type(enrollBoardReq.getType()).count(0).status(Status.Y).user(user).build();

		return boardRepository.save(newBoard);

	}
	
	@Transactional
	public void updateBoard(EnrollBoardRequestDto enrollBoardReq, User user) {
		
		// back에서 게시글 제목 null check
		if (enrollBoardReq.getTitle() == null || enrollBoardReq.getTitle().equals("")) {
			throw new IllegalArgumentException("제목을 입력해주세요.");
		}
		
		// back에서 게시글 내용 null check
		if (enrollBoardReq.getContent() == null || enrollBoardReq.getContent().equals("")) {
			throw new IllegalArgumentException("내용을 입력해주세요.");
		}

		// EnrollBoardRequestDto(id=20, title=제목 수정, content=<p>내용 수정</p>, type=F, hashTag=[태그1 수정, 태그2 수정])
		Board updateBoard = boardRepository.findByIdAndUserId(enrollBoardReq.getId(), user.getId()).orElseThrow(() -> {
			throw new IllegalArgumentException("게시글을 수정할 수 없습니다.");
		});
		
		updateBoard.setTitle(enrollBoardReq.getTitle());
		updateBoard.setContent(enrollBoardReq.getContent());
		updateBoard.setLastModifiedDate(LocalDateTime.now());
		
		tagService.updateTag(updateBoard, enrollBoardReq.getHashTag());
		
	}

//	@Transactional(readOnly = true)
//	public Page<BoardListResponseDto> boardList(Pageable pageable) {
//		/*pageable 사용전
//		System.out.println(boardRepository.findByTypeAndStatus("F", Status.Y, pageable));
//		return BoardListResponseDto.from(boardRepository.findByTypeAndStatus("F", Status.Y, pageable));
//		*/
//		Page<Board> entity = boardRepository.findByTypeAndStatus("F", Status.Y, pageable);
//		// e 는 내부의 각 요소들을 의미함, 이 각 요소들을 매개변수로 dto 를 만들어준다.
//		Page<BoardListResponseDto> dto = entity.map(e -> new BoardListResponseDto(e));
//		
//		return dto;
//	}
	
	@Transactional(readOnly = true)
	public Page<BoardListResponseDto> boardList(Pageable pageable) {

		String sql = "SELECT b.id, b.title, b.content"
				+ ", b.type"
				+ ", b.count"
				+ ", u.nickName"
				+ ", b.createDate"
				+ ", IFNULL(r.replyCount, 0) AS replyCount"
				+ ", IFNULL(l.likesCount, 0) AS likesCount"
				+ ", GROUP_CONCAT(bt.tagName SEPARATOR ',') AS tagNames "
				+ "FROM board b "
				+ "LEFT JOIN user u ON (b.userId = u.id) "
				+ "LEFT JOIN ( "
				+ "SELECT boardId, count(id) AS replyCount "
				+ "FROM reply "
				+ "GROUP BY boardId "
				+ ") r ON (b.id = r.boardId) "
				+ "LEFT JOIN ( "
				+ "SELECT referenceId, count(id) AS likesCount "
				+ "FROM likes "
				+ "WHERE category = 0 "
				+ "GROUP BY referenceId "
				+ ") l on (b.id = l.referenceId) "
				+ "LEFT JOIN ( "
				+ "SELECT bt.id, bt.boardId, t.tagName "
				+ "FROM boardTag bt "
				+ "LEFT JOIN tag t "
				+ "ON (bt.tagId = t.id) "
				+ ") bt ON (b.id = bt.boardId) "
				+ "WHERE b.type = 'F' AND b.status = :status "
				+ "GROUP BY b.id"
				+ ", b.title"
				+ ", b.content"
				+ ", b.type"
				+ ", b.count"
				+ ", u.nickName"
				+ ", b.createDate"
				+ ", replyCount"
				+ ", likesCount "
				+ "ORDER BY b.id desc";
		
		Query query = entityManager.createNativeQuery(sql, BoardListResponseDto.class);
		
		query.setMaxResults(pageable.getPageSize());
		query.setFirstResult((int) pageable.getOffset());
		query.setParameter("status", Status.Y.toString());
		
		List<BoardListResponseDto> myDtoList = query.getResultList();
		
	    String countSql = "SELECT COUNT(*) FROM (" + sql + ") AS countQuery";
	    Query countQuery = entityManager.createNativeQuery(countSql);
	    countQuery.setParameter("status", Status.Y.toString());
	    
	    Long total = (Long) countQuery.getSingleResult();
	    
	    Page<BoardListResponseDto> pageResult = new PageImpl<>(myDtoList, pageable, total);
		
		return pageResult;
	}
	
	
	@Transactional
	public void updateCount(int boardId) {
		Board board = boardRepository.findById(boardId).orElseThrow(() -> {
			return new IllegalArgumentException("글 찾기 실패 : 존재하지 않는 게시글 입니다.");
		});
		
		board.setCount(board.getCount() + 1);
		
		boardRepository.save(board);
		
	}
	
	@Transactional
	public BoardDetailResponseDto selectBoardDetail(int boardId, PrincipalDetails principaDetails) {
		
		Board board = boardRepository.findByIdAndStatusAndUserId(boardId, Status.Y, principaDetails.getUser().getId()).orElseThrow(() -> {
			throw new IllegalArgumentException("존재하지 않는 게시글 입니다.");
		});
		
		return new BoardDetailResponseDto(board);
	}
	
	@Transactional
	public void deleteBoard(int boardId, int userId) {
		Board updateBoard = boardRepository.findByIdAndUserId(boardId, userId).orElseThrow(() ->{
			return new IllegalArgumentException("존재하지 않는 게시글 입니다.");
		});
		updateBoard.setStatus(Status.N);
	}
	
	@Transactional
	public BoardAndReplyDetailResponseDto selectBoardAndReplyDetail(int boardId) {
		
		Board board = boardRepository.findByIdAndStatus(boardId, Status.Y).orElseThrow(() -> {
			throw new IllegalArgumentException("존재하지 않는 게시글 입니다.");
		});
		
		// 참조번호(replyId) [1, 2] 
		List<Integer> referenceNos = board.getReplies().stream().map(Reply::getId).collect(Collectors.toList());
		
		// board Entity to Dto
		BoardAndReplyDetailResponseDto boardAndReplyDetailResponseDto = new BoardAndReplyDetailResponseDto(board);
		
		// 참조번호를 이용해서 첨부파일들 불러온다.
		List<Attachment> attachments = attachmentRepository.findByReferenceNoInAndCategory(referenceNos, Category.REPLY);

		// attachment Entity to Dto
		List<ReplyAttachmentResponseDto> attachmentResponseDtos = attachments.stream().map(ReplyAttachmentResponseDto::new).collect(Collectors.toList());
		
		// boardDetailResponseDto의 List<Reply>를 가져와서 반복문
		for(ReplyResponseDto replyResponseDto : boardAndReplyDetailResponseDto.getReplies()) {
			// reply의 id와 attachment의 referenceNo를 비교해서 같은것들을 담아줄 List<Attachment> 생성
			List<ReplyAttachmentResponseDto> matchingAttachments = new ArrayList<>();
			// DB에서 불러온 attachment들을 위한 반복문
			for(ReplyAttachmentResponseDto replyAttachmentResponseDto : attachmentResponseDtos) {
				// reply의 id와 attachment의 참조번호를 비교하는 조건문
				if(replyResponseDto.getReplyId() == replyAttachmentResponseDto.getReferenceNo()) {
					// 참일 경우 matchingAttachments에 추가
					matchingAttachments.add(replyAttachmentResponseDto);
				}
			}
			// 각각의 replyResponseDto에 attachments 추가
			replyResponseDto.setAt(matchingAttachments);
		}
		return boardAndReplyDetailResponseDto;
	}
	

}
