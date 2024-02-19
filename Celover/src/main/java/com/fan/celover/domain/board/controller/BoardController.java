package com.fan.celover.domain.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

	@GetMapping("board/new")
	public String boardNew() {
		return "main/board/board-new";
	}
	
	@GetMapping("board/freeboards")
	public String boardForm() {
		return "main/board/board-freeboards";
	}
	
	@GetMapping("board/notices")
	public String noticeForm() {
		return "main/board/notices";
	}
}
