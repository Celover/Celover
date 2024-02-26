package com.fan.celover.domain.board.dto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class ReplyDeleteRequestDto {
	
	private int userId;
	
	private int replyId;

	public ReplyDeleteRequestDto(int userId, String replyId) {
		super();
		this.userId = userId;
		this.replyId = Integer.parseInt(replyId);
	}	
	
	

}
