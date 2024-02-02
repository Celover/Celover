/*
 * package com.fan.celover.global;
 * 
 * import java.util.Collection; import java.util.Map;
 * 
 * import org.springframework.security.core.GrantedAuthority; import
 * org.springframework.security.oauth2.core.user.DefaultOAuth2User;
 * 
 * import com.nimbusds.oauth2.sdk.Role;
 * 
 * import lombok.Getter;
 * 
 * // OAuth2UserService에서 사용할 OAuth2User 객체를 커스텀한 클래스 // 커스텀하는 이유는 Resource
 * Server에서 제공하지 않는 추가 정보들을 내 서비스에서 가지고 오기 위함이다.
 * 
 * @Getter public class CustomOAuth2User extends DefaultOAuth2User{
 * 
 * private String email; private Role role; // 처음로그인한 회원과 기존 회원을 구분하여 처음 로그인했을
 * 경우 추가정보를 입력하는 페이지로 넘겨준다.
 * 
 * public CustomOAuth2User(Collection<? extends GrantedAuthority> authorities,
 * Map<String , Object> attributes, String nameAttibuteKey, String email, Role
 * role) { // 부모객체인 DefaultOAuth2User를 생성한다. super(authorities, attributes,
 * nameAttibuteKey);
 * 
 * // email 과 role을 추가 파라미터로 받아서 커스텀한다. this.email = email; this.role = role; }
 * 
 * }
 */