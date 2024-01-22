package com.fan.celover.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping({"/" , ""})
	public String index() {
		return "index";
	}
	@GetMapping("/fanpage/main")
	public String fanfeedMain() {
		return "main/fanpage/feed/feedmain";
	}
	
}
