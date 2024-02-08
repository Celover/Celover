package com.fan.celover.domain.mypage.dto;

import lombok.Data;

@Data
public class UpdatePasswordReq {

	private String userId;
	private String currentPassword;
	private String newPassword;
	private String newPassword2;

}
