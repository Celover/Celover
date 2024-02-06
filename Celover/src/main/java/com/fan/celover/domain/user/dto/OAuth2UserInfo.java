package com.fan.celover.domain.user.dto;

public interface OAuth2UserInfo {
	String getProviderId(); // google, facebook

	String getProvider(); // google, facebook

	String getName(); // 홍길동

	String getEmail(); // sample2@naver.com
}
