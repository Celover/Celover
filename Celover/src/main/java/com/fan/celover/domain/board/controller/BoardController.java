package com.fan.celover.domain.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.fan.celover.domain.board.dto.BoardListResponseDto;
import com.fan.celover.domain.board.service.BoardService;
import com.fan.celover.global.security.model.PrincipalDetails;

@Controller
public class BoardController {

	@Autowired
	public BoardService boardService;

	@GetMapping("board/new")
	public String boardNew() {
		return "main/board/board-new";
	}

	@GetMapping("board/{id}/update")
	public String boardUpdate(@PathVariable int id, @AuthenticationPrincipal PrincipalDetails principalDetails, Model model) {
		System.out.println(id);
		
		// 게시글 상세화면으로 가는 메서드는 reply와 attachment까지 접근하기 때문에 재사용하지 않을꺼임
		// board 테이블의 내용만 있으면 된다.
		// apiController가 아닌 controller에서 board를 가져오는 이유는 권한이 없는 사용자가 접근했을 때 수정페이지를 띄우지 않고 경고 메시지를 띄우기 위해서
		
		model.addAttribute("board", boardService.selectBoardDetail(id, principalDetails));
		
		return "main/board/board-update";
	}

	@GetMapping("board/freeboards")
	public String freeBoardForm(Model model, @PageableDefault(page=0, size=3, sort="id", direction = Sort.Direction.DESC)Pageable pageable, @RequestParam(required = false, defaultValue = "") String keyword, @RequestParam(required = false, defaultValue = "lastest") String sort) {
		
		String type= "F";

		// lastest : 최근순, recommended : 추천순, comment : 댓글순, view : 조회순
		Page<BoardListResponseDto> boards = boardService.searchBoard(keyword, pageable, sort, type);
		
		model.addAttribute("sort", sort);
		model.addAttribute("boards", boards);
		model.addAttribute("keyword", keyword);
		model.addAttribute("category", type);
		return "main/board/board-freeboards";
	}
	
	@GetMapping("board/notices")
	public String noticeBoardForm(Model model, @PageableDefault(page=0, size=3, sort="id", direction = Sort.Direction.DESC)Pageable pageable, @RequestParam(required = false, defaultValue = "") String keyword, @RequestParam(required = false, defaultValue = "lastest") String sort) {
		
		String type= "N";
		
		// lastest : 최근순, recommended : 추천순, comment : 댓글순, view : 조회순
		Page<BoardListResponseDto> boards = boardService.searchBoard(keyword, pageable, sort, type);
		
		model.addAttribute("sort", sort);
		model.addAttribute("boards", boards);
		model.addAttribute("keyword", keyword);
		model.addAttribute("category", type);
		return "main/board/board-freeboards";
	}
	
	@GetMapping("board/{id}")
	public String boardDetailForm(@PathVariable int id, Model model) {
		model.addAttribute("boardId", id);
		return "main/board/board-detail";
	}

}
