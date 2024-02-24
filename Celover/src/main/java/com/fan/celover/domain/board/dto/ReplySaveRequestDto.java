package com.fan.celover.domain.board.dto;

import lombok.Builder;
import lombok.Data;
import lombok.ToString;

@ToString
@Builder
@Data
public class ReplySaveRequestDto {

	private int userId;
	private int boardId;
	private String content;
	/* private MultipartFile[] uploadFile; */
	
	/*
	 * @Builder public ReplySaveRequestDto(int userId, int boardId, String content)
	 * { this.userId = userId; this.boardId = boardId; this.content = content; }
	 * 
	 * public replys toEntity() { return Reply.builder() .userId(title)
	 * .content(content) .author(author) .build(); }
	 */

}
