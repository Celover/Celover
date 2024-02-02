package com.fan.celover.domain.user.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class UserSignUpDto {
	
	// 자체로그인 회원가입시에 사용되는 dto
	
	private String userId;
	private String email;
	private String password;
    private String nickname;
    private String birth;
    private String gender;
    private String nationality;
    private String phone;
    
}
