package com.fan.celover.domain.board.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.board.dto.BoardDetailResponseDto;
import com.fan.celover.domain.board.dto.BoardListResponseDto;
import com.fan.celover.domain.board.dto.EnrollBoardReq;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.repository.BoardRepository;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.role.Status;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {

	@Autowired
	private BoardRepository boardRepository;

	@Transactional
	public Board saveBoard(EnrollBoardReq enrollBoardReq, User user) {

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

	@Transactional(readOnly = true)
	public Page<BoardListResponseDto> boardList(Pageable pageable) {
		/*pageable 사용전
		System.out.println(boardRepository.findByTypeAndStatus("F", Status.Y, pageable));
		return BoardListResponseDto.from(boardRepository.findByTypeAndStatus("F", Status.Y, pageable));
		*/
		Page<Board> entity = boardRepository.findByTypeAndStatus("F", Status.Y, pageable);
		// e 는 내부의 각 요소들을 의미함, 이 각 요소들을 매개변수로 dto 를 만들어준다.
		Page<BoardListResponseDto> dto = entity.map(e -> new BoardListResponseDto(e));
		
		return dto;
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
	public BoardDetailResponseDto boardDetail(int boardId) {
		Board board = boardRepository.findByIdAndStatus(boardId, Status.Y).orElseThrow(()->{
			throw new IllegalArgumentException("존재하지 않는 게시글 입니다.");
		});
		
		return new BoardDetailResponseDto(board);
	}
	

}
