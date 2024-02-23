package com.fan.celover.domain.board.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.domain.board.dto.BoardDetailResponseDto;
import com.fan.celover.domain.board.dto.EnrollBoardReq;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.service.BoardService;
import com.fan.celover.global.dto.ResponseDto;
import com.fan.celover.global.security.model.PrincipalDetails;
import com.fan.celover.global.tag.service.TagService;
import com.nimbusds.jose.shaded.gson.Gson;

@RestController
public class BoardApiController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private TagService tagService;
	
	@PostMapping("/api/board")
	public ResponseDto<Integer> saveBoard(@RequestBody EnrollBoardReq enrollBoardReq, @AuthenticationPrincipal PrincipalDetails principal){
		
		Board board = boardService.saveBoard(enrollBoardReq, principal.getUser());
		
		tagService.saveTag(board, enrollBoardReq.getHashTag());
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
		
	}
	
	@PostMapping("/api/board/{id}")
	public ResponseDto<Integer> selectBoard(@PathVariable int id, Model model) {
		
		boardService.updateCount(id);
		
		BoardDetailResponseDto board = boardService.boardDetail(id);
		
//		System.out.println(boardDetailResponseDto);
//		model.addAttribute(board);
		
//		return new Gson().toJson(board);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), board, 1);
	}
}
