package com.fan.celover.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	// 아이디 존재 여부 true, false 반환
	boolean existsByUserId(String userId);
	
	// 닉네임 존재 여부 true, false 반환
	boolean existsByNickname(String nickname);

	// 아이디 User 반환
	Optional<User> findByUserId(String userId);
	
}
