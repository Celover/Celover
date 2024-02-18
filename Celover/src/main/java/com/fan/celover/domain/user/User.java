package com.fan.celover.domain.user;

import com.fan.celover.domain.BaseTimeEntity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
public class User extends BaseTimeEntity {

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;

   @Column(nullable = false, unique = true, length = 100) 
   private String userId;

   @Column(nullable = false, length = 100)
   private String password;

   @Column(nullable = true, length = 50)
   private String email;

   @Column(nullable = true, unique = true, length = 50)
   private String nickname;

   @Column(nullable = true)
   private String imageUrl; // 프로필 이미지

   @Column(nullable = true)
   private String provider; // kakao, naver, google
   
   @Column(nullable = true)
   private String providerId; // 12312432432 아이디
   
   @Column(nullable = true)
   private String birth;

   @Column(nullable = true, length = 1)
   private String gender;

   @Column(nullable = true, length = 1)
   private String nationality;

   @Column(nullable = true, length = 13)
   private String phone;
//   
//   @Column(nullable = false, length = 13)
//    private String role;//권한 -> USER, ADMIN
   
   @Enumerated(EnumType.STRING) // DB에는 RoleType이라는게 없기 때문에 String이라고 알려줘야한다.
   private Role role; // ADMIN, USER 만 값이 들어가게된다. 

 
    @Builder
   public User(String userId, String password, String email, String nickname, String imageUrl, String provider,
         String providerId, String birth, String gender, String nationality, String phone, Role role) {
      this.userId = userId;
      this.password = password;
      this.email = email;
      this.nickname = nickname;
      this.imageUrl = imageUrl;
      this.provider = provider;
      this.providerId = providerId;
      this.birth = birth;
      this.gender = gender;
      this.nationality = nationality;
      this.phone = phone;
      this.role = role;
   }

}