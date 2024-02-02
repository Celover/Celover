/*
 * package com.fan.celover.global;
 * 
 * import java.util.Map;
 * 
 * import org.springframework.security.web.header.writers.frameoptions.
 * StaticAllowFromStrategy;
 * 
 * import com.fan.celover.domain.user.User;
 * 
 * import lombok.Builder; import lombok.Getter;
 * 
 * // 각 소셜로그인에서 받아오는 데이터가 다르기 때문에 소셜별로 받는 데이터를 분기처리하기 위한 DTO 클래스
 * 
 * @Getter public class OAuthAttributes {
 * 
 * // 이후에 CustomOAuth2UserService에서 값을 얻어 빌더로 생성 후 반환 private String
 * nameAttributeKey; // OAuth2 로그인 진행시 키가 되는 필드값, pk와 동일한 의미 private
 * OAuth2UserInfo oauth2Userinfo;
 * 
 * @Builder private OAuthAttributes(String nameAttributeKey, OAuth2UserInfo
 * oauth2Userinfo) { this.nameAttributeKey = nameAttributeKey;
 * this.oauth2Userinfo = oauth2Userinfo; }
 * 
 * 
 * SocialType에 맞는 메소드 호출하여 OAuthAttributes 객체 반환
 * 
 * 파라미터 userNameAttributeName -> OAuth2 로그인 시 키(PK)가 되는 값 attributes -> OAuth
 * 서비스의 유저 정보
 * 
 * ofKakao, ofGoogle, ofNaver 들은 각각 소셜 로그인 API에서 제공하는 회원의 id, attributes,
 * nameAttributeKey를 저장 후 build
 * 
 * public static OAuthAttributes of(SocialType socialType, String
 * userNameAttributeName, Map<String, Object> attributes) {
 * 
 * if (socialType == SocialType.KAKAO) { return ofKakao(userNameAttributeName,
 * attributes); }
 * 
 * return null; }
 * 
 * private static OAuthAttributes ofKakao(String userNameAttributeName,
 * Map<String, Object> attributes) { return OAuthAttributes.builder()
 * .nameAttributeKey(userNameAttributeName) .oauth2Userinfo(new
 * KakaoOAuth2UserInfo(attributes)) .build(); }
 * 
 * public User toEntity(SocialType socialType, OAuth2UserInfo oauth2UserInfo) {
 * return User.builder() .socialType(socialType)
 * .socialId(oauth2UserInfo.getId()) .email(UUID.randomUUID() +
 * "@socialUser.com") .nickname(oauth2UserInfo.getNickname())
 * .imageUrl(oauth2UserInfo.getImageUrl()) .role(Role.GUEST) .build(); } }
 */