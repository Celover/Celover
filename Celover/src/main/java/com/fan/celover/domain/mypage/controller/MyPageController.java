package com.fan.celover.domain.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyPageController {

	// 마이페이지
	@GetMapping("/mypage/info")
	public String myPageForm() {
		return "main/mypage/mypage-info";
	}
}
