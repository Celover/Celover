package com.fan.celover.domain.fan.artist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArtistController {
	@GetMapping("/fanpage/artist")
	public String fanfeedArtist() {
		return "main/fanpage/feed/feed-artist";
	}
}