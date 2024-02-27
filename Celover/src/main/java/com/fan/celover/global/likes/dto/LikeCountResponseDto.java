package com.fan.celover.global.likes.dto;

import com.fan.celover.global.likes.model.Likes;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class LikeCountResponseDto {

	// 내가 좋아요를 눌었는지, 1이면 yes 0 이면 no;
	private boolean status;
	
	// 좋아요 갯수
	private long count;
	
	public LikeCountResponseDto(boolean status, long count) {
		this.status = status;
		this.count = count;
	}
	
}
