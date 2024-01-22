package com.fan.celover.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.model.User;
import com.fan.celover.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Transactional
	public User 회원찾기(String userId) {
		User user = userRepository.findByUserId(userId).orElseGet(()->{
			return new User(); // 비어있는 객체 반환
		});
		return user;
	}
	
	@Transactional
	public boolean existsUserId(String userId) {
		return userRepository.existsByUserId(userId);
	}
	
	@Transactional
	public boolean existsNickname(String nickname) {
		return userRepository.existsByNickname(nickname);
	}
	
	@Transactional
	public void signUp(User user) {
		String rawPassword = user.getPassword();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		user.setPassword(encPassword);
		userRepository.save(user);
	}
	
}
