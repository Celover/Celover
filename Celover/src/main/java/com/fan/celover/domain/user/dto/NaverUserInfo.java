package com.fan.celover.domain.user.dto;

import java.util.Map;

public class NaverUserInfo implements OAuth2UserInfo {

	public NaverUserInfo(Map<String, Object> attributes) {
		this.attributes = attributes;
	}

	private Map<String, Object> attributes;

	@Override
	public String getProviderId() {
		return (String) attributes.get("id");
	}

	@Override
	public String getProvider() {
		return "naver";
	}

	@Override
	public String getName() {
		return (String) attributes.get("name");
	}

	@Override
	public String getEmail() {
		return (String) attributes.get("email");
	}
}
