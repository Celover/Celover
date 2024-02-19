package com.fan.celover.domain.board.model;

import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.common.BaseTimeEntity;
import com.fan.celover.global.role.Status;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED) // 기본 생성자를 생성하지만 다른 패키지에 소속된 클래스의 접근을 막는다.
@AllArgsConstructor
@Builder
@ToString
@Entity
public class Board extends BaseTimeEntity{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotBlank
	@Column(length = 100)
	private String title;

	@Lob
	private String content;

	@NotBlank
	@Column(length = 1)
	private String type;
	
	private int count;
	
	@Enumerated(EnumType.STRING)
	private Status status;
	
	@ManyToOne(fetch = FetchType.EAGER)
	// EAGER -> 항상 데이터를 가져온다. 즉 Board를 select 할 때 항상 USER 테이블 정보까지 함께 조회한다.
	// LAZY -> 필요할때만 가져온다.
	@JoinColumn(name="userId")
	private User user;
	
}
