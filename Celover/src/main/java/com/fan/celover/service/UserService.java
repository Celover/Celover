package com.fan.celover.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fan.celover.model.User;
import com.fan.celover.repository.UserRepository;

import jakarta.transaction.Transactional;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Transactional
	public boolean existsUserId(String userId) {
		return userRepository.existsByUserId(userId);
	}
	
	@Transactional
	public boolean existsNickname(String nickname) {
		return userRepository.existsByNickname(nickname);
	}
	
	@Transactional
	public void createUser(User user) {
		userRepository.save(user);
	}
	
}
