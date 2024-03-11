package com.fan.celover.domain.mypage.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.token.TokenService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.domain.mypage.dto.UpdatePasswordReq;
import com.fan.celover.domain.mypage.dto.UpdateUserReq;
import com.fan.celover.domain.mypage.service.MyPageService;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.domain.user.service.UserService;
import com.fan.celover.global.dto.ResponseDto;
import com.fan.celover.global.security.model.PrincipalDetails;
import com.fan.celover.global.security.service.PrincipalDetailsService;
import com.fan.celover.global.security.util.SecurityUtils;
import com.fan.celover.global.validation.ValidationSequence;

import jakarta.validation.ValidationException;

@RestController
@Validated
public class MyPageApiController {

	@Autowired
	private MyPageService myPageService;

	@Autowired
	private UserService userService;

	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private SecurityUtils securityUtils;

	// 닉네임 중복 확인
	@GetMapping("/mypage/users/nickname/{nickname}/exists")
	public boolean existsNickname(@PathVariable String nickname) {

		System.out.println("nickname : " + nickname);

		return myPageService.existsNickname(nickname);
	}

	// 이메일 중복 확인
	@GetMapping("/mypage/users/email/{email}/exists")
	public boolean existsEmail(@PathVariable String email) {

		System.out.println("email : " + email);

		return myPageService.existsEmail(email);
	}

	// 비밀번호 변경
	@PutMapping("/mypage/users/password")
	public ResponseDto<Integer> updatePassword(@RequestBody UpdatePasswordReq updatePasswordReq) {

		System.out.println(updatePasswordReq);

		// 현재 로그인 한 사용자의 정보
		// 만약 프론트에서 userId를 input:hidden에 담아서 가져온다면 사용자가 브라우저에서 해당 값을 변경할 수 있으므로
		// 보안에 취약하다.
		String userId = securityUtils.getUserDetails().getUsername();

		System.out.println("현재 로그인 한 사용자 ID : " + userId);

		myPageService.updatePassword(userId, updatePasswordReq);

		// 변경된 사용자로 토큰 재발급
		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(userId, updatePasswordReq.getNewPassword2()));
		SecurityContextHolder.getContext().setAuthentication(authentication);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

	}
	
	// 마이페이지 회원탈퇴
	@DeleteMapping("/mypage/users")
	public ResponseDto<Integer> deleteUser(@AuthenticationPrincipal PrincipalDetails principal){
		
		userService.deleteUser(principal);
		
		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1); 
		
	}

	// 마이페이지 회원정보 수정
	@PutMapping("/mypage/users")
	public ResponseDto<Integer> updateUser(
			@Validated(ValidationSequence.class) @RequestBody UpdateUserReq updateUserReq,
			BindingResult bindingResult) {

		System.out.println("updateUserReq : " + updateUserReq);
		System.out.println("bindingResult : " + bindingResult);

		String userId = securityUtils.getUserDetails().getUsername();

		if (bindingResult.getFieldError() != null) {
			throw new ValidationException(bindingResult.getFieldError().getDefaultMessage());
		}
		// 닉네임 이메일 중복검사하고 메시지 출력

		User user = myPageService.updateUser(userId, updateUserReq);

		securityUtils.refreshSession(user);

		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);

	}
		

}
