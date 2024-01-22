package com.fan.celover.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {
	
	@GetMapping("/auth/join-form")
	public String joinForm() {
		return "main/user/join-form";
	}

	@GetMapping("/auth/login-form")
	public String loginForm() {
		return "main/user/login-form";
	}
	
	@GetMapping("/auth/find-id")
	public String findId() {
		return "main/user/find-id";
	}
	
	@GetMapping("/auth/find-password")
	public String findPassword() {
		return "main/user/find-password";
	}
}
