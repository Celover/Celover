package com.fan.celover.domain.board.dto;

import java.util.List;

import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class EnrollBoardReq {

	private String title;
	private String content;
	private String type;
	private List<String> hashTag;
	
}
