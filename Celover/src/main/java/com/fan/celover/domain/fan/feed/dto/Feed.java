package com.fan.celover.domain.fan.feed.dto;

import java.sql.Timestamp;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import com.fan.celover.domain.user.User;
import com.fan.celover.global.common.dto.FanPage;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@Entity
public class Feed {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne // Many = feed, One = user 한명의 유저는 많은 feed를 쓸 수 있다.
	@JoinColumn(name="userId")
	private User userId;
	
	@ManyToOne // Many = feed, One = fanpPageId 한개의 팬페이지는 많은 피드를 갖을수 있다.
	@JoinColumn(name="fanPageName")
	private FanPage fanPageName;
	
	@CreationTimestamp
	private Timestamp create_date;
	
	@Lob // 대용량 데이터
	private String content;
	// 섬머노트 라이브러리 활용 되서 들어갈 자리
	
	@ColumnDefault("0")
	private int count;
	
	@Column(length = 1)
	@ColumnDefault("'Y'")
	private String status;
	
}