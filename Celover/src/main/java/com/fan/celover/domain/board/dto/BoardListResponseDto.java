package com.fan.celover.domain.board.dto;

import java.sql.Timestamp;
import java.util.List;
import java.util.stream.Collectors;

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
	private char type;
	private int count;
	private String nickname;
	private String createDate;
	private long replyCount;
	private long likesCount;
	private String[] tagNames;
	
	public BoardListResponseDto(int id, String title, String content, char type, int count, String nickname, Timestamp createDate,
			long replyCount, long likesCount, String tagNames) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.type = type;
		this.count = count;
		this.nickname = nickname;
		this.createDate = ConvertLocaldatetimeToString.calculateTime(createDate.toLocalDateTime());
		this.replyCount = replyCount;
		this.likesCount = likesCount;
		if(tagNames != null) {
			this.tagNames = tagNames.split(",");
		}
	}

	/*
	 * public static List<BoardListResponseDto> from(Page<Board> boards) { // List
	 * 형태의 Board에 stream()을 붙여서 map, filter, limit, collect등의 데이터 처리 연산을 할 수 있음
	 * return boards.stream() .map(BoardListResponseDto::new) // map을 통해
	 * BoardResponseDto로 변환 .collect(Collectors.toList()); // list로 변환 }
	 */

}
