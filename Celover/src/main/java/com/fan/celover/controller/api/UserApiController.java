package com.fan.celover.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.controller.dto.ResponseDto;
import com.fan.celover.model.User;
import com.fan.celover.service.UserService;

@RestController
public class UserApiController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/auth/existsUserId")
	public boolean existsUserId(String userId){
		System.out.println("existsUserId 실행됨");
		System.out.println("아이디 : " + userId);
		
		return userService.existsUserId(userId);
	}
	
	@GetMapping("/auth/existsNickname")
	public boolean existsNickname(String nickname){
		System.out.println("existsNickname 실행됨");
		System.out.println("닉네임 : " + nickname);
		
		return userService.existsNickname(nickname);
	}
	
	@PostMapping("/auth/joinProc")
	public ResponseDto<Integer> createUser(@RequestBody User user){
		System.out.println("createUser 실행됨");
		System.out.println("유저정보: " + user);
		
		userService.createUser(user);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}
	
	
}
