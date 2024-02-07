package com.fan.celover.domain.user.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.domain.user.User;
import com.fan.celover.domain.user.service.UserService;
import com.fan.celover.global.ResponseDto;

@RestController
public class UserApiController {

	@Value("${celover.key}")
	private String celoverKey;
	
	@Autowired
	private UserService userService;

	@Autowired
	private AuthenticationManager authenticationManager;

	// 아이디 중복 체크
	@GetMapping("/auth/users/id/{userId}/exists")
	public boolean existsUserId(@PathVariable String userId) {
		System.out.println("existsId 실행됨");
		System.out.println("아이디 : " + userId);

		return userService.existsUserId(userId);
	}

	// 이메일 중복 체크
	@GetMapping("/auth/users/email/{email}/exists")
	public boolean existsEmail(@PathVariable String email) {
		System.out.println("existsEmail 실행됨");
		System.out.println("이메일 : " + email);

		return userService.existsEmail(email);
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
	public ResponseDto<Integer> signUp(@RequestBody User user) throws Exception {
		System.out.println("createUser 실행됨");
		System.out.println("유저정보: " + user);

		userService.signUp(user);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
	}

	// 회원정보 수정
	@PutMapping("/visitor/users")
	public ResponseDto<Integer> updateUser(@RequestBody User user) {
		System.out.println("updateUser 실행됨");
		System.out.println("User : " + user);

		userService.updateUser(user);
		
		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(user.getUserId(), celoverKey));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

	}
}