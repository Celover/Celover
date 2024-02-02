/*
 * package com.fan.celover.global;
 * 
 * import java.util.Map;
 * 
 * import
 * org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
 * import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
 * import
 * org.springframework.security.oauth2.core.OAuth2AuthenticationException;
 * import org.springframework.security.oauth2.core.user.OAuth2User; import
 * org.springframework.stereotype.Service;
 * 
 * import com.fan.celover.domain.user.repository.UserRepository;
 * 
 * import lombok.AllArgsConstructor; import lombok.extern.slf4j.Slf4j;
 * 
 * // OAuth2 의 로그인 로직을 담당한다.
 * 
 * 
 * @Slf4j
 * 
 * @Service
 * 
 * @AllArgsConstructor public class OAuth2UserService extends
 * DefaultOAuth2UserService { // access token을 얻은 후 실행
 * 
 * private final UserRepository userRepository;
 * 
 * @Override public OAuth2User loadUser(OAuth2UserRequest userRequest) throws
 * OAuth2AuthenticationException {
 * 
 * log.info("CustomOAuth2UserService.loadUser() 실행 - OAuth2 로그인 요청 진입");
 * 
 * OAuth2User oAuth2User = super.loadUser(userRequest);
 * 
 * String registrationId =
 * userRequest.getClientRegistration().getRegistrationId(); SocialType
 * socialType = getSocialType(registrationId); String userNameAttributeName =
 * userRequest.getClientRegistration()
 * .getProviderDetails().getUserInfoEndpoint().getUserNameAttributeName(); //
 * OAuth2 로그인 시 키(PK)가 되는 값 Map<String, Object> attributes =
 * oAuth2User.getAttributes(); // 소셜 로그인에서 API가 제공하는 userInfo의 Json 값(유저 정보들)
 * 
 * validateAttributes(oAuth2User.getAttributes());
 * 
 * return null;
 * 
 * // Map<String, Object> attributes = oAuth2User.getAttributes(); // //
 * System.out.println("attributes :: " + attributes); // //
 * httpSession.setAttribute("login_info", attributes); // // return new
 * DefaultOAuth2User(Collections.singleton(new
 * SimpleGrantedAuthority("ROLE_USER")), // oAuth2User.getAttributes(), "id"); }
 * 
 * private SocialType getSocialType(String registrationId) {
 * if(NAVER.equals(registrationId)) { return SocialType.NAVER; }
 * if(KAKAO.equals(registrationId)) { return SocialType.KAKAO; } return
 * SocialType.GOOGLE; }
 * 
 * private void validateAttributes(Map<String, Object> attributes) { if
 * (!attributes.containsKey("kakao_account.profile")) { throw new
 * IllegalArgumentException("서드파티의 응답에 email이 존재하지 않습니다!!!"); } } }
 */