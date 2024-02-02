package com.fan.celover.domain.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.user.Role;
import com.fan.celover.domain.user.User;
import com.fan.celover.domain.user.dto.UserSignUpDto;
import com.fan.celover.domain.user.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
//	@Transactional
//	public User 회원찾기(String userId) {
//		User user = userRepository.findByUserId(userId).orElseGet(()->{
//			return new User(); // 비어있는 객체 반환
//		});
//		return user;
//	}
	
	@Transactional
	public boolean existsUserId(String userId) {
		return userRepository.existsByUserId(userId);
	}

	@Transactional
	public boolean existsEmail(String email) {
		return userRepository.existsByEmail(email);
	}
	
	@Transactional
	public boolean existsNickname(String nickname) {
		return userRepository.existsByNickname(nickname);
	}
	
	@Transactional
	public void signUp(UserSignUpDto userSignUpDto) {
		  User user = User.builder()
				  	.userId(userSignUpDto.getUserId())
	                .email(userSignUpDto.getEmail())
	                .password(userSignUpDto.getPassword())
	                .nickname(userSignUpDto.getNickname())
	                .birth(userSignUpDto.getBirth())
	                .gender(userSignUpDto.getGender())
	                .nationality(userSignUpDto.getNationality())
	                .phone(userSignUpDto.getPhone())
	                .role(Role.USER)
	                .build();
		  System.out.println(user);

	        user.bCryptPasswordEncode(bCryptPasswordEncoder);
	        userRepository.save(user);
	}
	
}
