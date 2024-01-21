package com.fan.celover.model;

import java.sql.Date;
import java.sql.Timestamp;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(nullable = false, unique = true, length = 100)
	private String userId;
	
	@Column(nullable = false, length = 100)
	private String password;
	
	@Column(nullable = true, length = 50)
	private String email;
	
	@Column(nullable = false, unique = true, length = 50)
	private String nickname;

//	private RoleType role;
	
	@Column(nullable = false)
	private String birth;
	
	@Column(nullable = false, length = 1)
	private String gender;

	@Column(nullable = false, length = 1)
	private String nationality;
	
	@Column(nullable = false, length = 13)
	private String phone;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}