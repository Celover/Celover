package com.fan.celover.domain.board.dto;

import java.sql.Time;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.format.annotation.DateTimeFormat;

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
public class BoardListResponseDto {

	private int id;
	private String title;
	private String content;
	private String type;
	private int count;
	private String nickname;
	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private String createDate;
	private List<BoardTagResponseDto> boardTags;
	private List<String> tags;
	
	// Entity -> Dto
	public BoardListResponseDto(Board board) {
		this.id = board.getId();
		this.title = board.getTitle();
		this.content = board.getContent();
		this.type = board.getType();
		this.count = board.getCount();
		this.nickname = board.getUser().getNickname();
		this.createDate = ConvertLocaldatetimeToString.calculateTime(board.getCreateDate());
//		this.createDate = board.getCreateDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		this.boardTags = board.getBoardTag().stream().map(BoardTagResponseDto::new).collect(Collectors.toList());
//		this.tags = board.getBoardTag().stream().map(BoardTagResponseDto::new).collect(Collectors.toList());
	}

	/*
	 * public static List<BoardListResponseDto> from(Page<Board> boards) { // List
	 * 형태의 Board에 stream()을 붙여서 map, filter, limit, collect등의 데이터 처리 연산을 할 수 있음
	 * return boards.stream() .map(BoardListResponseDto::new) // map을 통해
	 * BoardResponseDto로 변환 .collect(Collectors.toList()); // list로 변환 }
	 */

}
