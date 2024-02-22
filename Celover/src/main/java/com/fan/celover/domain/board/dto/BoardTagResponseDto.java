package com.fan.celover.domain.board.dto;

import com.fan.celover.domain.board.model.BoardTag;
import com.fan.celover.global.tag.dto.TagResponseDto;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@ToString
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
public class BoardTagResponseDto {

    private int boardTagId;
    private TagResponseDto tagObjResponseDto;

    // Entity -> DTO
    public BoardTagResponseDto(BoardTag boardTag) {
        this.boardTagId = boardTag.getId();
        this.tagObjResponseDto = new TagResponseDto(boardTag.getTag());
    }

}