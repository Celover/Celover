package com.fan.celover.domain.board.dto;

import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

import com.fan.celover.domain.board.model.Board;

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
	private String content;
	private String category;
	private List<BoardTagResponseDto> boardTags;
	
	public BoardDetailResponseDto(Board board) {
		this.id = board.getId();
		this.title = board.getTitle();
		this.content = board.getContent();
		this.category = board.getType();
		this.boardTags = board.getBoardTag().stream().map(BoardTagResponseDto::new).collect(Collectors.toList());
	
	}
	
}
