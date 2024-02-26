package com.fan.celover.domain.board.model;

import java.util.List;

import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.attachment.model.Attachment;
import com.fan.celover.global.common.BaseTimeEntity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OrderBy;
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
public class Reply extends BaseTimeEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Lob
	private String content;

	@ManyToOne
	@JoinColumn(name = "boardId")
	private Board board;

	@ManyToOne
	@JoinColumn(name = "userId")
	private User user;

}
