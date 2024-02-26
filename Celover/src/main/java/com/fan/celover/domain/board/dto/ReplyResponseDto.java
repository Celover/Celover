package com.fan.celover.domain.board.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fan.celover.domain.board.model.Reply;
import com.fan.celover.global.attachment.dto.ReplyAttachmentResponseDto;
import com.fan.celover.global.attachment.model.Attachment;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
public class ReplyResponseDto {
	
	private int replyId;
	private String content;
	private String nickname;

	private String createDate;
	
//	private List<Attachment> attachments;
	
	private List<ReplyAttachmentResponseDto> replyAttachmentResponseDtos;
	
	public ReplyResponseDto(Reply reply) {
		this.replyId = reply.getId();
		this.content = reply.getContent();
		this.nickname = reply.getUser().getNickname();
		this.createDate = reply.getCreateDate().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
	}

	public void setAt(List<ReplyAttachmentResponseDto> replyAttachmentResponseDtos) {
		this.replyAttachmentResponseDtos = replyAttachmentResponseDtos;
	}

}
