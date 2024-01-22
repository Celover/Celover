package com.fan.celover.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/auth/joinForm")
	public String joinForm() {
		return "main/user/joinForm";
	}

	@GetMapping("/auth/loginForm")
	public String loginForm() {
		return "main/user/loginForm";
	}
	
	@GetMapping("/auth/findId")
	public String findId() {
		return "main/user/findId";
	}
	
	@GetMapping("/auth/findPassword")
	public String findPassword() {
		return "main/user/findPassword";
	}
}
