package com.fan.celover.domain.board.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.fan.celover.domain.board.dto.ReplyDeleteRequestDto;
import com.fan.celover.domain.board.dto.ReplyResponseDto;
import com.fan.celover.domain.board.dto.ReplySaveRequestDto;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.model.Reply;
import com.fan.celover.domain.board.repository.BoardRepository;
import com.fan.celover.domain.board.repository.ReplyRepository;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.domain.user.repository.UserRepository;
import com.fan.celover.global.attachment.dto.ReplyAttachmentResponseDto;
import com.fan.celover.global.attachment.model.Attachment;
import com.fan.celover.global.attachment.repository.AttachmentRepository;
import com.fan.celover.global.attachment.util.AttachmentUtil;
import com.fan.celover.global.role.Category;
import com.fan.celover.global.role.Status;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReplyService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ReplyRepository replyRepository;
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Autowired
	private AttachmentRepository attachmentRepository;
	
	@Autowired
	private AttachmentUtil fileUtil;
	
	@Transactional
	public ReplyResponseDto saveReply(ReplySaveRequestDto requestDto, List<MultipartFile> files) {
		
		User user = userRepository.findById(requestDto.getUserId()).orElseThrow(()->{
			return new IllegalArgumentException("존재하지 않는 회원입니다.");
		});
		
		Board board = boardRepository.findByIdAndStatus(requestDto.getBoardId(), Status.Y).orElseThrow(()->{
			return new IllegalArgumentException("존재하지 않는 게시글입니다.");
		});
		System.out.println(requestDto);
		
		Reply newReply = Reply.builder().content(requestDto.getContent()).board(board).user(user).build();
		
		int referenceNo = replyRepository.save(newReply).getId();
		
		if(files != null) {
			List<Attachment> attachments = fileUtil.saveFile(files, Category.REPLY, referenceNo);
			System.out.println(attachments);
			attachmentRepository.saveAll(attachments);
		}
		
		// 새롭게 등록된 ReplyDto
		ReplyResponseDto replyResponseDto = new ReplyResponseDto(newReply);
		
        List<Integer> refernceNoToList = new ArrayList<>();
        refernceNoToList.add(referenceNo);
		
		List<Attachment> attachments = attachmentRepository.findByReferenceNoInAndCategory(refernceNoToList, Category.REPLY);
		
		List<ReplyAttachmentResponseDto> attachmentResponseDtos = attachments.stream().map(ReplyAttachmentResponseDto::new).collect(Collectors.toList());
		
		replyResponseDto.setAt(attachmentResponseDtos);
		
		return replyResponseDto;
	}
	
	@Transactional
	public void deleteReply(ReplyDeleteRequestDto replyDeleteRequestDto) {
		int result = replyRepository.deleteByUserIdAndId(replyDeleteRequestDto.getUserId(), replyDeleteRequestDto.getReplyId());
		
		// attachment 삭제
		attachmentRepository.deleteByReferenceNoAndCategory(replyDeleteRequestDto.getReplyId(), Category.REPLY);
		
		System.out.println(result);
		
		if(result == 0) {
			throw new IllegalArgumentException("댓글 삭제를 실패했습니다.");
		}
	}
	
}
