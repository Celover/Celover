package com.fan.celover.domain.fan.cs.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class CsController {

	@GetMapping("/cs/csmain")
	public String csMain() {
		return "main/board/cs/csMain";
	}
}
