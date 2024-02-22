package com.fan.celover.global.tag.dto;

import com.fan.celover.global.tag.model.Tag;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class TagResponseDto {

    private int tagId;
    private String tagName;


    public TagResponseDto(Tag tag) {
        this.tagId = tag.getId();
        this.tagName = tag.getTagName();
    }
}