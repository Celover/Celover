package com.fan.celover.domain.user;

import java.sql.Timestamp;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
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

	@Column(nullable = true)
	private String imageUrl; // 프로필 이미지

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
	

	@Enumerated(EnumType.STRING)
	private Role role;

	@Enumerated(EnumType.STRING)
	private SocialType socialType; // KAKAO, NAVER, GOOGLE

	private String socialId; // 로그인한 소셜 타입의 식별자 값 (일반 로그인인 경우 null)

	private String refreshToken; // 리프레시 토큰
	
    // 유저 권한 설정 메소드
	public void authorizeUser() {
	    this.role = Role.USER;
	}
	
    // 비밀번호 암호화 메소드
    public void bCryptPasswordEncode(BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.password = bCryptPasswordEncoder.encode(this.password);
    }
    
    public void updateRefreshToken(String updateRefreshToken) {
        this.refreshToken = updateRefreshToken;
    }

}