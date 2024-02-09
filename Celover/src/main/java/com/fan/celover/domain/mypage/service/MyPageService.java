package com.fan.celover.domain.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.mypage.dto.UpdatePasswordReq;
import com.fan.celover.domain.mypage.dto.UpdateUserReq;
import com.fan.celover.domain.user.model.User;
import com.fan.celover.domain.user.repository.UserRepository;
import com.fan.celover.global.dto.ResponseDto;
import com.fan.celover.global.security.util.SecurityUtils;

@Service
public class MyPageService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;


	@Transactional(readOnly = true)
	public boolean existsNickname(String nickname) {
		return userRepository.existsByNickname(nickname);
	}
	
	@Transactional(readOnly = true)
	public boolean existsEmail(String Email) {
		return userRepository.existsByEmail(Email);
	}

	@Transactional
	public void updatePassword(String userId, UpdatePasswordReq updatePasswordReq) {

		// 검증 성공
		User persistance = userRepository.findByUserId(userId).orElseThrow(() -> {
			return new IllegalArgumentException("존재하지 않는 사용자입니다.");
		});

		// sns 회원인지 검사 
		// equals는 null 값에 사용할 수 없으므로 == null을 통해 null 체크를 먼저 한다.
		if(persistance.getProvider() == null || persistance.getProvider().equals("")) {
			
			// 사용자가 입력한 현재 비밀번호와 DB에 저장돼있는 사용자 비밀번호가 일치하지 않는 경우
			if (!bcryptPasswordEncoder.matches(updatePasswordReq.getCurrentPassword(), persistance.getPassword())) {
				throw new IllegalArgumentException("비밀번호가 틀렸습니다.");
			} else {
				// 새로운 비밀번호와 비밀번호 재입력이 일치하지 않을 경우
				if (!updatePasswordReq.getNewPassword().equals(updatePasswordReq.getNewPassword2())) {
					throw new IllegalArgumentException("비밀번호가 서로 일치하지 않습니다.");
				}
			}
			
			persistance.setPassword(bcryptPasswordEncoder.encode(updatePasswordReq.getNewPassword2()));
			
		}else {
			throw new IllegalArgumentException("올바르지 않는 접근입니다.");
		}
		
	}
	
	
	@Transactional
	public User updateUser(String userId, UpdateUserReq updateUserReq){
		
		User persistance = userRepository.findByUserId(userId).orElseThrow(()->{
			return new BadCredentialsException("BadCredentialsException");
		});
		
		persistance.setNickname(updateUserReq.getNickname());
		persistance.setPhone(updateUserReq.getPhone());
		persistance.setGender(updateUserReq.getGender());
		persistance.setBirth(updateUserReq.getBirth());
		persistance.setEmail(updateUserReq.getEmail());
		
		return persistance;
		
	}
	
}
