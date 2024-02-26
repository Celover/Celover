package com.fan.celover.domain.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.fan.celover.domain.board.dto.ReplySaveRequestDto;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.model.Reply;
import com.fan.celover.domain.board.repository.BoardRepository;
import com.fan.celover.domain.board.repository.ReplyRepository;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.domain.user.repository.UserRepository;
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
	public void saveReply(ReplySaveRequestDto requestDto, List<MultipartFile> files) {
		
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
	}
	
}
