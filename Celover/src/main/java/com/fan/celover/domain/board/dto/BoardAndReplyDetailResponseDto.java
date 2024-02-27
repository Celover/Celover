package com.fan.celover.domain.board.dto;

import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

import com.fan.celover.domain.board.model.Board;
import com.fan.celover.global.common.ConvertLocaldatetimeToString;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class BoardAndReplyDetailResponseDto {

	private int id;
	private String title;
	private String type;
	private int count;	
	private String nickname;
	private String content;
	// @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private String createDate;
	private String lastModifiedDate;
	private List<BoardTagResponseDto> boardTags;
	private List<ReplyResponseDto> replies;
	 
	public BoardAndReplyDetailResponseDto(Board board) {
		this.id = board.getId();
		this.title = board.getTitle();
		this.type = board.getType();
		this.count = board.getCount();
		this.nickname = board.getUser().getNickname();
		this.content = board.getContent();
		this.createDate = ConvertLocaldatetimeToString.calculateTime(board.getCreateDate());
		if(board.getLastModifiedDate() != null) {
			this.lastModifiedDate = board.getLastModifiedDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		}
		this.boardTags = board.getBoardTag().stream().map(BoardTagResponseDto::new).collect(Collectors.toList());
		this.replies = board.getReplies().stream().map(ReplyResponseDto::new).collect(Collectors.toList());
	}
	
	
}
