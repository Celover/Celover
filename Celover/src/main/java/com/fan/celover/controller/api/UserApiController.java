package com.fan.celover.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

	// 아이디 중복 체크
	@GetMapping("/auth/users/id/{userId}/exists")
	public boolean existsUserId(@PathVariable String userId) {
		System.out.println("existsUserId 실행됨");
		System.out.println("아이디 : " + userId);

		return userService.existsUserId(userId);
	}

	// 닉네임 중복 체크
	@GetMapping("/auth/users/nickname/{nickname}/exists")
	public boolean existsNickname(@PathVariable String nickname) {
		System.out.println("existsNickname 실행됨");
		System.out.println("닉네임 : " + nickname);

		return userService.existsNickname(nickname);
	}

	// 회원가입
	@PostMapping("/auth/users")
	public ResponseDto<Integer> signUp(@RequestBody User user) {
		System.out.println("createUser 실행됨");
		System.out.println("유저정보: " + user);

		userService.signUp(user);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

}
