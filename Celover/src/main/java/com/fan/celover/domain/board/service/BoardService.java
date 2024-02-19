package com.fan.celover.domain.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.board.dto.EnrollBoardReq;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.repository.BoardRepository;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.role.Status;
import com.fan.celover.global.tag.model.BoardTag;
import com.fan.celover.global.tag.model.Tag;
import com.fan.celover.global.tag.repository.TagRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Transactional
	public Board saveBoard(EnrollBoardReq enrollBoardReq, User user) {
		
		// back에서 게시글 제목 null check
		if(enrollBoardReq.getTitle() == null || enrollBoardReq.getTitle().equals("")) {
			throw new IllegalArgumentException("제목을 입력해주세요.");
		}
		
		// back에서 게시글 내용 null check
		if(enrollBoardReq.getContent() == null || enrollBoardReq.getContent().equals("")) {
			throw new IllegalArgumentException("내용을 입력해주세요.");
		}
		
		Board newBoard = Board.builder().title(enrollBoardReq.getTitle()).content(enrollBoardReq.getContent()).type(enrollBoardReq.getType())
				.count(0).status(Status.Y).user(user).build();
		
		return boardRepository.save(newBoard);
		
	}

}
