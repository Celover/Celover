package com.fan.celover.domain.board.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fan.celover.domain.board.dto.BoardDetailResponseDto;
import com.fan.celover.domain.board.dto.EnrollBoardRequestDto;
import com.fan.celover.domain.board.dto.ReplySaveRequestDto;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.service.BoardService;
import com.fan.celover.domain.board.service.ReplyService;
import com.fan.celover.global.dto.ResponseDto;
import com.fan.celover.global.security.model.PrincipalDetails;
import com.fan.celover.global.tag.service.TagService;

@RestController
public class BoardApiController {

	@Autowired
	private BoardService boardService;
	
	@Autowired
	private TagService tagService;
	
	@Autowired 
	private ReplyService replyService;
	
	@PostMapping("/api/board")
	public ResponseDto<Integer> saveBoard(@RequestBody EnrollBoardRequestDto enrollBoardReq, @AuthenticationPrincipal PrincipalDetails principal){
		
		Board board = boardService.saveBoard(enrollBoardReq, principal.getUser());
		
		tagService.saveTag(board, enrollBoardReq.getHashTag());
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
		
	}
	
	@PostMapping("/api/board/{id}")
	public ResponseDto<Integer> selectBoard(@PathVariable int id, Model model) {
		
		BoardDetailResponseDto board = boardService.boardDetail(id);
		
		boardService.updateCount(id);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), board, 1);
	}
	
	
	@PostMapping("/api/board/{id}/reply")
	public ResponseDto<Integer> selectReplys(@RequestPart(value = "requestDto") ReplySaveRequestDto requestDto, @RequestPart(value = "file", required = false) List<MultipartFile> files) {

		// 파일을 DB에 등록하는 작업은 replyService에서 한다.
		// => 댓글을 저장하고 나서 컨트롤러로 돌아올때 커밋이 된다.
		// 	  즉 댓글을 저장되고 파일을 저장되지 않을 수 있다.
		//    댓글이 저장성공했지만 파일 등록 실패시 rollback
		replyService.saveReply(requestDto, files);

		
		/*
		 * // for(MultipartFile file : files) { // System.out.println(file); //
		 * System.out.println(file.getOriginalFilename()); // }
		 */		
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
}










