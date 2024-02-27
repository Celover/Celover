package com.fan.celover.domain.board.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fan.celover.domain.board.dto.BoardDetailResponseDto;
import com.fan.celover.domain.board.dto.EnrollBoardRequestDto;
import com.fan.celover.domain.board.dto.ReplyDeleteRequestDto;
import com.fan.celover.domain.board.dto.ReplyResponseDto;
import com.fan.celover.domain.board.dto.ReplySaveRequestDto;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.service.BoardService;
import com.fan.celover.domain.board.service.ReplyService;
import com.fan.celover.global.dto.ResponseDto;
import com.fan.celover.global.likes.dto.LikeCountResponseDto;
import com.fan.celover.global.likes.dto.LikesRequestDto;
import com.fan.celover.global.likes.service.LikesService;
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
	
	@Autowired
	private LikesService likesService;
	
	@PostMapping("/api/board")
	public ResponseDto<Integer> saveBoard(@RequestBody EnrollBoardRequestDto enrollBoardReq, @AuthenticationPrincipal PrincipalDetails principal){
		
		Board board = boardService.saveBoard(enrollBoardReq, principal.getUser());
		
		tagService.saveTag(board, enrollBoardReq.getHashTag());
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
		
	}
	
	@GetMapping("/api/board/{id}/likes")
	public ResponseDto<Integer> selectBoardLikes(@PathVariable int id, @AuthenticationPrincipal PrincipalDetails principalDetails){
		
		// 해당 게시글에 내가 좋아요 했는지, 좋아요 갯수는 몇개인지 출력
		return new ResponseDto<Integer>(HttpStatus.OK.value(), likesService.selectBoardLikes(id, principalDetails.getUser().getId()), 1);
	}
	
	@PostMapping("/api/board/{id}/likes")
	public ResponseDto<Integer> updateBoardLikes(@PathVariable int id, @AuthenticationPrincipal PrincipalDetails principalDetails){
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), likesService.updateBoardLikes(id, principalDetails.getUser()), 1);
	}
	
	
	@GetMapping("/api/board/{id}")
	public ResponseDto<Integer> selectBoard(@PathVariable int id, @AuthenticationPrincipal PrincipalDetails principal) {
		
		BoardDetailResponseDto board = boardService.boardDetail(id);
		
		boardService.updateCount(id);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), board, 1);
//		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	@DeleteMapping("/api/board/{id}/reply")
	public ResponseDto<Integer> deleteReply(@RequestBody ReplyDeleteRequestDto replyDeleteRequestDto){
		
		replyService.deleteReply(replyDeleteRequestDto);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	
	@PostMapping("/api/board/{id}/reply")
	public ResponseDto<Integer> saveReply(@RequestPart(value = "requestDto") ReplySaveRequestDto requestDto, @RequestPart(value = "file", required = false) List<MultipartFile> files) {

		// 파일을 DB에 등록하는 작업은 replyService에서 한다.
		// => 댓글을 저장하고 나서 컨트롤러로 돌아올때 커밋이 된다.
		// 	  즉 댓글을 저장되고 파일을 저장되지 않을 수 있다.
		//    댓글이 저장성공했지만 파일 등록 실패시 rollback
		ReplyResponseDto dto = replyService.saveReply(requestDto, files);

		
		/*
		 * // for(MultipartFile file : files) { // System.out.println(file); //
		 * System.out.println(file.getOriginalFilename()); // }
		 */		
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), dto, 1);
	}
	
}










