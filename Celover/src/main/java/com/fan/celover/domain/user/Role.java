package com.fan.celover.domain.user;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Role {
	// 스프링 시큐리티에서는 권한(Role) 코드에 항상 접두사 "ROLE_"을 붙여야한다.
	/*
	 * ROLE_ADMIN -> 관리자
	 * ROLE_GUEST -> OAuth2으로 처음 로그인한 유저
	 * ROLE_USER -> 일반 회원
	 */
	ADMING("ROLE_ADMIN"), GUEST("ROLE_GUEST"), USER("ROLE_USER");

	private final String key;
}
