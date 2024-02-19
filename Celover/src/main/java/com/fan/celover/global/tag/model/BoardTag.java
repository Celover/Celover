package com.fan.celover.global.tag.model;

import com.fan.celover.domain.board.model.Board;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED) // 기본 생성자를 생성하지만 다른 패키지에 소속된 클래스의 접근을 막는다.
@AllArgsConstructor
@Builder
@ToString
public class BoardTag {
	
    @Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="boardId")
	private Board board;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="tagId")
	private Tag tag;
}
