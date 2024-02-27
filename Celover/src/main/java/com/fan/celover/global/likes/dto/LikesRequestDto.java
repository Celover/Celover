package com.fan.celover.global.likes.dto;

import lombok.Builder;
import lombok.Data;
import lombok.ToString;

@ToString
@Builder
@Data
public class LikesRequestDto {
	
	private int referenceNo;
	
	private int userId;

}
