package com.fan.celover.domain.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyPageController {

	// 마이페이지
	@GetMapping("/mypage/info")
	public String myPageForm() {
		return "main/mypage/myPage_updateUser";
	}
}
