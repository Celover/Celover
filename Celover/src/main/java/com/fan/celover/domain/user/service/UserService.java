package com.fan.celover.domain.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.user.Role;
import com.fan.celover.domain.user.User;
import com.fan.celover.domain.user.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

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
	public void signUp(User user) {

		System.out.println(user);
		
		String rawPassword = user.getPassword();
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);

		User newUser = User.builder().userId(user.getUserId()).email(user.getEmail()).password(encPassword)
				.nickname(user.getNickname()).birth(user.getBirth()).gender(user.getGender())
				.nationality(user.getNationality()).phone(user.getPhone()).role(Role.ROLE_USER).build();

		userRepository.save(newUser);
	}

}