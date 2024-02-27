package com.fan.celover.domain.board.dto;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.format.annotation.DateTimeFormat;

import com.fan.celover.domain.board.model.Board;
import com.fan.celover.global.attachment.model.Attachment;
import com.fan.celover.global.common.ConvertLocaldatetimeToString;
import com.fan.celover.global.likes.dto.LikeCountResponseDto;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class BoardDetailResponseDto {

	private int id;
	private String title;
	private String type;
	private int count;
	private String nickname;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private String createDate;
	private List<BoardTagResponseDto> boardTags;
	private List<ReplyResponseDto> replies;
	
	public BoardDetailResponseDto(Board board) {
		this.id = board.getId();
		this.title = board.getTitle();
		this.type = board.getType();
		this.count = board.getCount();
		this.nickname = board.getUser().getNickname();
		this.createDate = ConvertLocaldatetimeToString.calculateTime(board.getCreateDate());
		this.boardTags = board.getBoardTag().stream().map(BoardTagResponseDto::new).collect(Collectors.toList());
		this.replies = board.getReplies().stream().map(ReplyResponseDto::new).collect(Collectors.toList());
	}
	
	
}
