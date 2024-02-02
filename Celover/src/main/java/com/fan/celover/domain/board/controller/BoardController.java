package com.fan.celover.domain.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

	@GetMapping("/board-form")
	public String boardForm() {
		return "main/board/boardList";
	}
	
}
