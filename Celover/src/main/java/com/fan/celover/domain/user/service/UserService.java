package com.fan.celover.domain.user.service;

import java.util.NoSuchElementException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.user.Role;
import com.fan.celover.domain.user.User;
import com.fan.celover.domain.user.UserStatus;
import com.fan.celover.domain.user.repository.UserRepository;

@Service
public class UserService {

	@Value("${celover.key}")
	private String celoverKey;
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private AuthenticationManager authenticationManager;

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
				.nationality(user.getNationality()).phone(user.getPhone()).status(UserStatus.ACTIVE)
				.role(Role.ROLE_USER).build();

		userRepository.save(newUser);
	}

	@Transactional(readOnly = true)
	public User findByUserId(String userId) {
		User user = userRepository.findByUserId(userId).orElseThrow(() -> {
			return new NoSuchElementException();
		});
		return user;
	}
	
	@Transactional
	public void updateUser(User user) {
		User persistance = userRepository.findByUserId(user.getUserId()).orElseThrow(() -> {
			return new NoSuchElementException();
		});
		
		persistance.setEmail(user.getEmail());
		persistance.setNickname(user.getNickname());
		persistance.setBirth(user.getBirth());
		persistance.setGender(user.getGender());
		persistance.setNationality(user.getNationality());
		persistance.setPhone(user.getPhone());
		persistance.setRole(Role.ROLE_USER);
		
		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(user.getUserId(), celoverKey));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
	}
}