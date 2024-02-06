package com.fan.celover.domain.fan.media.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MediaController {
	@GetMapping("/fanpage/media")
	public String fanMedia() {
		return "main/fanpage/media/mediamain";
	}
	
	@GetMapping("/fanpage/media/detail")
	public String fanMediaDetail() {
		return "main/fanpage/media/media-detail";
	}
}
