package com.fan.celover.domain.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.mypage.dto.UpdatePasswordReq;
import com.fan.celover.domain.user.User;
import com.fan.celover.domain.user.repository.UserRepository;

@Service
public class MyPageService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private AuthenticationManager authenticationManager;

	@Transactional(readOnly = true)
	public boolean existsNickname(String nickname) {
		return userRepository.existsByNickname(nickname);
	}
	
	@Transactional(readOnly = true)
	public boolean existsEmail(String Email) {
		return userRepository.existsByEmail(Email);
	}

//	비밀번호 로직 구현해야됨
	@Transactional
	public void updatePassword(UpdatePasswordReq updatePasswordReq) {

		// 현재 로그인 한 사용자의 정보
		// 만약 프론트에서 userId를 input:hidden에 담아서 가져온다면 사용자가 브라우저에서 해당 값을 변경할 수 있으므로
		// 보안에 취약하다.
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		UserDetails userDetails = ((UserDetails) (auth.getPrincipal()));

		String userId = userDetails.getUsername();

		System.out.println("현재 로그인 한 사용자 ID : " + userId);

		// 사용자가 입력한 현재 비밀번호와 DB에 저장돼있는 사용자 비밀번호가 일치하지 않는 경우
		if (!bcryptPasswordEncoder.matches(updatePasswordReq.getCurrentPassword(), userDetails.getPassword())) {
			throw new IllegalArgumentException("비밀번호가 틀렸습니다.");
		} else {
			// 새로운 비밀번호와 비밀번호 재입력이 일치하지 않을 경우
			if (!updatePasswordReq.getNewPassword().equals(updatePasswordReq.getNewPassword2())) {
				throw new IllegalArgumentException("비밀번호가 서로 일치하지 않습니다.");
			}
		}
		
		// 검증 성공
		User persistance = userRepository.findByUserId(userId).orElseThrow(() -> {
			return new IllegalArgumentException("존재하지 않는 사용자입니다.");
		});
		
		// sns 회원인지 검사 
		// equals는 null 값에 사용할 수 없으므로 == null을 통해 null 체크를 먼저 한다.
		if(persistance.getProvider() == null || persistance.getProvider().equals("")) {
			persistance.setPassword(bcryptPasswordEncoder.encode(updatePasswordReq.getNewPassword2()));
			
			// 변경된 사용자로 토큰 재발급
			Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(userId, updatePasswordReq.getNewPassword2()));
			SecurityContextHolder.getContext().setAuthentication(authentication);
		
		}else {
			throw new IllegalArgumentException("올바르지 않는 접근입니다.");
		}
	}
}
