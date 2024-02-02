/*
 * package com.fan.celover.global;
 * 
 * import java.util.Map;
 * 
 * public class KakaoOAuth2UserInfo extends OAuth2UserInfo{
 * 
 * public KakaoOAuth2UserInfo(Map<String, Object> attributes) {
 * super(attributes); }
 * 
 * @Override public String getNickname() {
 * 
 * // 카카오 유저정보가 kakao_account.profile 과 같이 두겹으로 감싸져 있기 때문에 get을 두번사용하여 꺼낸 후 사용
 * 
 * Map<String, Object> account = (Map<String, Object>)
 * attributes.get("kakao_account");
 * 
 * if(account == null) { return null; }
 * 
 * Map<String, Object> profile = (Map<String, Object>) account.get("profile");
 * 
 * if (profile == null) { return null; }
 * 
 * return (String) profile.get("nickname"); }
 * 
 * @Override public String getImageUrl() {
 * 
 * Map<String, Object> account = (Map<String, Object>)
 * attributes.get("kakao_account");
 * 
 * if(account == null) { return null; }
 * 
 * Map<String, Object> profile = (Map<String, Object>) account.get("profile");
 * 
 * if (profile == null) { return null; }
 * 
 * return (String) profile.get("thumbnail_image_url"); } }
 */