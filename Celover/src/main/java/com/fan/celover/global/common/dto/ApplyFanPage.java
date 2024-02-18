package com.fan.celover.global.common.dto;

import java.sql.Date;
import java.sql.Timestamp;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import com.fan.celover.domain.user.User;

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
@ToString
@Builder
@Entity
public class ApplyFanPage {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@ManyToOne // 1명의 유저는 많은 팬카페를 신청할 수 있다.
	@JoinColumn(name="userId")
	private User userId;
	
	@Column(nullable = false, length = 100)
	private String artistName;
	
	@Column(nullable = false)
	private Date debuteDate;
	
	@Lob
	private String sns;
	
	@Column(nullable = false, updatable = false)
	@CreationTimestamp
	private Timestamp createDate;
	
	@ColumnDefault("'A'")
	@Column(nullable = false, length = 1)
	private String status;
	
	@Lob
	@Column(nullable = false)
	private String artInfo;
	
	@Lob
	private String artistHistory;
	
	@Column(nullable = false)
	private Date invertDate;
	
	@Lob
	private String invertReason;
	
	@Column(nullable = false, length = 30)
	private String labelName;
	
	@Column(nullable = false, length = 30)
	private String labelManager;
	
	@Column(nullable = false, length = 13)
	private String labelPhone;
	
	@Column(nullable = true, length = 100)
	private String labelMail;
	
	@Column(nullable = true, length = 100)
	private String labelTeam;
}
