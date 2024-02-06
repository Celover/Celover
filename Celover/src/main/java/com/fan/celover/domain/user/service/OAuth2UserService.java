package com.fan.celover.domain.user.service;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import com.fan.celover.domain.user.Role;
import com.fan.celover.domain.user.User;
import com.fan.celover.domain.user.dto.GoogleUserInfo;
import com.fan.celover.domain.user.dto.KakaoUserInfo;
import com.fan.celover.domain.user.dto.NaverUserInfo;
import com.fan.celover.domain.user.dto.OAuth2UserInfo;
import com.fan.celover.domain.user.dto.PrincipalDetails;
import com.fan.celover.domain.user.repository.UserRepository;

@Service
public class OAuth2UserService extends DefaultOAuth2UserService {

	@Autowired
	private UserRepository userRepository;
//	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	// kakao, naver, google 로 부터 받은 request 데이터에 대한 후처리되는 함수
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException{
		
		
		System.out.println("userRequest : " + userRequest);
		System.out.println("getClientRegistration : " + userRequest.getClientRegistration()); // registrationId로 어떤 oauth로 로그인했는지 알 수 있다.
		System.out.println("getAccessToken : " + userRequest.getAccessToken());
		
		// 사용자 정보가 들어있음
		System.out.println("getAttributes : " + super.loadUser(userRequest).getAttributes());
		
		OAuth2User oAuth2User = super.loadUser(userRequest);
		OAuth2UserInfo userInfo = null;
		
		String registrationId = userRequest.getClientRegistration().getRegistrationId();
		
		if (registrationId.equals("kakao")) {
			userInfo = new KakaoUserInfo(oAuth2User.getAttributes());
		}else if(registrationId.equals("naver")) {
			userInfo = new NaverUserInfo((Map)oAuth2User.getAttributes().get("response"));
		}else if(registrationId.equals("google")) {
			userInfo = new GoogleUserInfo(oAuth2User.getAttributes());
		}else {
			System.out.println("로그인 실패");
		}
		
        String provider = userInfo.getProvider();
        String providerId = userInfo.getProviderId();
        String oauth2Id = provider + "_" + providerId; //중복이 발생하지 않도록 provider와 providerId를 조합
        String username = userInfo.getName();
        String email = userInfo.getEmail();
        Optional<User> findMember = userRepository.findByUserId(oauth2Id);
        User user = null;
        if (findMember.isEmpty()) { //찾지 못했다면
            user = User.builder()
                    .userId(oauth2Id)
                    .email(email)
                    .password(bCryptPasswordEncoder().encode("celover"))
                    .role(Role.ROLE_VISITER)
                    .provider(provider)
                    .providerId(providerId).build();
            userRepository.save(user);
        }
        else{
            user = findMember.get();
        }
        return new PrincipalDetails(user, oAuth2User.getAttributes());
    }
	
	
}
