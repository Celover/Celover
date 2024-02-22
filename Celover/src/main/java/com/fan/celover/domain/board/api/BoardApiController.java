package com.fan.celover.domain.board.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.domain.board.dto.EnrollBoardReq;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.service.BoardService;
import com.fan.celover.global.dto.ResponseDto;
import com.fan.celover.global.security.model.PrincipalDetails;
import com.fan.celover.global.tag.service.TagService;

@RestController
public class BoardApiController {

	@Autowired
	private BoardService boardSevice;
	
	@Autowired
	private TagService tagSevice;
	
	@PostMapping("/api/board")
	public ResponseDto<Integer> saveBoard(@RequestBody EnrollBoardReq enrollBoardReq, @AuthenticationPrincipal PrincipalDetails principal){
		
		Board board = boardSevice.saveBoard(enrollBoardReq, principal.getUser());
		
		tagSevice.saveTag(board, enrollBoardReq.getHashTag());
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
		
	}
}
