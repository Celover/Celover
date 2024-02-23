package com.fan.celover.domain.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.fan.celover.domain.board.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	public BoardService boardService;

	@GetMapping("board/new")
	public String boardNew() {
		return "main/board/board-new";
	}

	@GetMapping("board/freeboards")
	public String boardForm(Model model, @PageableDefault(page=0, size=10, sort="id", direction = Sort.Direction.DESC)Pageable pageable) {
		System.out.println(boardService.boardList(pageable));
		model.addAttribute("boards", boardService.boardList(pageable));
		return "main/board/board-freeboards";
	}
	
	@GetMapping("board/{id}")
	public String boardDetailForm(@PathVariable int id, Model model) {
		model.addAttribute("boardId", id);
		return "main/board/board-detail";
	}

	@GetMapping("board/notices")
	public String noticeForm() {
		return "main/board/notices";
	}
}
