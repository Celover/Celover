
package com.fan.celover.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {
	
	@GetMapping("/auth/join-form")
	public String joinForm() {
		return "main/user/joinForm";
	}

	@GetMapping("/auth/login-form")
	public String loginForm() {
		return "main/user/loginForm";
	}
	
	@GetMapping("/auth/find-id")
	public String findId() {
		return "main/user/findId";
	}
	
	@GetMapping("/auth/find-password")
	public String findPassword1() {
		return "main/user/findPasswordIndex";
	}
	
	@GetMapping("/auth/find-password2")
	public String findPassword2() {
		return "main/user/findPassword";
	}
	
	// 마이페이지 컨트롤러 시작
	@GetMapping("/mypage-form")
	public String myPageForm() {
		return "main/mypage/myPage";
	}
	
	
}
