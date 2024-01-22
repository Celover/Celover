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
	@GetMapping("/fanpage/artist")
	public String fanfeedArtist() {
		return "main/fanpage/feed/feed-artist";
	}
	@GetMapping("/fanpage/media")
	public String fanMedia() {
		return "main/fanpage/media/mediamain";
	}
	@GetMapping("/fanpage/schedule")
	public String fanSchedule() {
		return "main/fanpage/calendar/calendar";
	}
	@GetMapping("/fanpage/shop")
	public String fanShop() {
		return "main/fanpage/shop/shopmain";
	}
	@GetMapping("/fanpage/shop/detail")
	public String fanShopDetail() {
		return "main/fanpage/shop/shop-detail";
	}
	@GetMapping("/fanpage/media/detail")
	public String fanMediaDetail() {
		return "main/fanpage/media/media-detail";
	}
}
