package com.fan.celover.domain.mypage.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.domain.mypage.dto.UpdatePasswordReq;
import com.fan.celover.domain.mypage.dto.UpdateUserReq;
import com.fan.celover.domain.mypage.service.MyPageService;
import com.fan.celover.global.ResponseDto;

import jakarta.validation.Valid;

@RestController
@Validated
public class MyPageApiController {
	
	@Autowired
	private MyPageService myPageService; 

	@GetMapping("/mypage/users/nickname/{nickname}/exists")
	public boolean existsNickname(@PathVariable String nickname) {
		
		System.out.println("nickname : " + nickname);
		
		return myPageService.existsNickname(nickname);
	}
	
	@GetMapping("/mypage/users/email/{email}/exists")
	public boolean existsEmail(@PathVariable String email) {
		
		System.out.println("email : " + email);
		
		return myPageService.existsEmail(email);
	}

	@PutMapping("/mypage/users/password")
	public ResponseDto<Integer> updatePassword(@RequestBody UpdatePasswordReq updatePasswordReq) {
		System.out.println(updatePasswordReq);
		
		myPageService.updatePassword(updatePasswordReq);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
		
	}
	
	@PutMapping("/mypage/users")
	public void updateUser(@Valid @RequestBody UpdateUserReq updateUserReq, Errors errors, BindingResult bindingResult){
		
		System.out.println("updateUserReq : " + updateUserReq);

		if(errors.hasErrors()) {
			System.out.println("유효성 검사 오류");			
		}
		if(bindingResult.hasErrors()) {
			System.out.println("유효성 검사 오류: " + bindingResult.getFieldError().getDefaultMessage()); 
		}else {
			System.out.println("유효성 검사 통과");			
		}
		
		
		
	}
	
	
}
