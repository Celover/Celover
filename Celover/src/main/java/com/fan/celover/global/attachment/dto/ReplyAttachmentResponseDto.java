package com.fan.celover.global.attachment.dto;

import com.fan.celover.domain.board.model.Reply;
import com.fan.celover.global.attachment.model.Attachment;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class ReplyAttachmentResponseDto {

	private int id;

	private String imgPath;

	private String changeName;

	private String originName;

	private int referenceNo;

	public ReplyAttachmentResponseDto(Attachment attachment) {
		this.id = attachment.getId();
//		this.imgPath = attachment.getImgPath();
		this.originName = attachment.getOriginName();
		this.changeName = attachment.getChangeName();
		this.referenceNo = attachment.getReferenceNo();

		String imgPath = attachment.getImgPath();

		if (imgPath != null && imgPath.contains("static")) {
			int startIndex = imgPath.indexOf("static") + "static".length();
			this.imgPath = imgPath.substring(startIndex);
		}
	}

}
