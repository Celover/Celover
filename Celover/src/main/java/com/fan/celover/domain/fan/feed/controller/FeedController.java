package com.fan.celover.domain.fan.feed.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FeedController {
	@GetMapping("/fanpage/main")
	public String fanfeedMain() {
		return "main/fanpage/feed/feedmain";
	}
}
