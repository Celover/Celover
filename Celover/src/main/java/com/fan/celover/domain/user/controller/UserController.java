
package com.fan.celover.domain.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	// 회원가입 페이지
	@GetMapping("/auth/join-form")
	public String joinForm() {
		return "main/user/joinForm";
	}

	// 로그인 페이지
	@GetMapping("/auth/login-form")
	public String loginForm() {
		return "main/user/loginForm";
	}

	// 아이디 찾기 페이지
	@GetMapping("/auth/find-id")
	public String findId() {
		return "main/user/findId";
	}

	// 비밀번호 찾기 페이지 (아이디 입력)
	@GetMapping("/auth/find-password")
	public String findPassword1() {
		return "main/user/findPasswordIndex";
	}

	// 비밀번호 찾기 페이지
	@GetMapping("/auth/find-password2")
	public String findPassword2() {
		return "main/user/findPassword";
	}
	
	/*
	// 카카오 로그인
	@GetMapping("auth/kakao/callback") // 카카오 로그인 개발자 센터에 등록한 콜백주소
	public @ResponseBody String kakaoCallback(String code) {
		// code : 토큰 받기에 필요한 인가 코드
		// return "카카오 인증 완료" + code;

		// POST 방식으로 key-value 데이터를 요청

		RestTemplate rt = new RestTemplate();

		// HttpHeader 오브젝트 생성
		HttpHeaders header = new HttpHeaders();

		// request header 작성
		header.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();

		// request body 작성
		params.add("grant_type", "authorization_code");
		params.add("client_id", "d15d0ec9bd2e7e5bd2904659955fbb98");
		params.add("redirect_uri", "http://localhost:8888/auth/kakao/callback");
		params.add("code", code);

		// HttpHeader 와 HttpBody를 하나의 오브젝트로 합치기
		HttpEntity<MultiValueMap<String, String>> entity = new HttpEntity<>(params, header);

		ResponseEntity<String> response = rt.exchange(
				"https://kauth.kakao.com/oauth/token", 
				HttpMethod.POST, 
				entity,
				String.class // 응답데이터는 String 타입 
		);
		
		//return "카카오 토큰 요청 완료" + response;
		// 이제 이 응답 데이터를 담을 수 있는 자바 객체를 만들어야한다. OAuthToken.java

		// String 형식인 응답 데이터를 자바객체롤 생성 
		
	}

	 */
	
	/*************************** 마이페이지 컨트롤러 시작 *****************************/
	
	// 마이페이지
	@GetMapping("/mypage-form")
	public String myPageForm() {
		return "main/mypage/myPage";
	}


}
