/*
 * package com.fan.celover.domain.user.repository;
 * 
 * import static org.assertj.core.api.Assertions.assertThat; import static
 * org.junit.jupiter.api.Assertions.assertThrows; import static
 * org.mockito.Mockito.clearAllCaches;
 * 
 * import org.junit.jupiter.api.AfterEach; import org.junit.jupiter.api.Test;
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.boot.test.context.SpringBootTest; import
 * org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder; import
 * org.springframework.transaction.annotation.Transactional;
 * 
 * import com.fan.celover.domain.user.Role; import
 * com.fan.celover.domain.user.User;
 * 
 * import jakarta.persistence.EntityManager;
 * 
 * @SpringBootTest
 * 
 * @Transactional class UserRepositoryTest {
 * 
 * @Autowired UserRepository userRepository;
 * 
 * @Autowired EntityManager em;
 * 
 * @AfterEach private void after(){ em.clear(); }
 * 
 * @Test public void 회원가입테스트() throws Exception {
 * 
 * User user =
 * User.builder().userId("user01").password("1234567890").nickname("user1").
 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
 * Role.USER).build();
 * 
 * User saveuser = userRepository.save(user);
 * 
 * User finduser =
 * userRepository.findByUserId(saveuser.getUserId()).orElseThrow(() -> new
 * RuntimeException("저장된 회원이 없습니다"));
 * 
 * assertThat(finduser).isSameAs(saveuser); assertThat(finduser).isSameAs(user);
 * }
 * 
 * @Test public void 회원가입시_아이디_없음() throws Exception {
 * 
 * User user =
 * User.builder().password("1234567890").nickname("user1").birth("99.02.10").
 * nationality("N").gender("M").phone("010-1234-1234").role(Role.USER).build();
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user)); }
 * 
 * @Test public void 회원가입시_닉네임_없음() throws Exception { User user =
 * User.builder().userId("user01").password("1234567890").birth("99.02.10").
 * nationality("N").gender("M").phone("010-1234-1234").role(Role.USER).build();
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user)); }
 * 
 * @Test public void 회원가입시_생년월일_없음() throws Exception { User user =
 * User.builder().userId("user01").password("1234567890").nickname("user1").
 * nationality("N").gender("M").phone("010-1234-1234").role(Role.USER).build();
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user)); }
 * 
 * @Test public void 회원가입시_성별_없음() throws Exception { User user =
 * User.builder().userId("user01").password("1234567890").nickname("user1").
 * birth("99.02.10").nationality("N").phone("010-1234-1234").role(Role.USER).
 * build();
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user)); }
 * 
 * @Test public void 회원가입시_국적_없음() throws Exception { User user =
 * User.builder().userId("user01").password("1234567890").nickname("user1").
 * birth("99.02.10").gender("M").phone("010-1234-1234").role(Role.USER).build();
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user)); }
 * 
 * @Test public void 회원가입시_휴대전화번호_없음() throws Exception { User user =
 * User.builder().userId("user01").password("1234567890").nickname("user1").
 * birth("99.02.10").nationality("N").gender("M").role(Role.USER).build();
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user)); }
 * 
 * @Test public void 회원가입시_중복된_아이디_있음() throws Exception { User user1 =
 * User.builder().userId("user01").password("1234567890").nickname("user1").
 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
 * Role.USER).build();
 * 
 * User user2 =
 * User.builder().userId("user01").password("1111111111").nickname("user2").
 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
 * Role.USER).build();
 * 
 * userRepository.save(user1);
 * 
 * assertThrows(Exception.class, () -> userRepository.save(user2));
 * 
 * }
 * 
 *//**
	 * @throws Exception
	 *//*
		 * @Test public void 성공_회원수정() throws Exception {
		 * 
		 * User user =
		 * User.builder().userId("user01").password("1234567890").nickname("user1").
		 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
		 * Role.USER).build(); userRepository.save(user);
		 * 
		 * // 업데이트된 데이터 String updatePassword = "updatePassword"; String updateNickname
		 * = "updateNickname"; String updateBirth = "updateBirth"; String
		 * updateNationality = "F"; String updateGender = "F"; String updatePhone =
		 * "010-1111-2222";
		 * 
		 * BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		 * 
		 * // 업데이트할 유저 id로 값을 찾는다 User findUser =
		 * userRepository.findByUserId(user.getUserId()).orElseThrow(() -> new
		 * Exception());
		 * 
		 * // 업데이트 수행 findUser.updatePassword(passwordEncoder,updatePassword);
		 * findUser.updateNickname(updateNickname); findUser.updateBirth(updateBirth);
		 * findUser.updateNationality(updateNationality);
		 * findUser.updateGender(updateGender); findUser.updatePhone(updatePhone);
		 * 
		 * // 플러쉬 em.flush();
		 * 
		 * // 업데이트 후 다시 가져온다. User findUpdateUser=
		 * userRepository.findByUserId(findUser.getUserId()).orElseThrow(() -> new
		 * Exception());
		 * 
		 * System.out.println(findUpdateUser.getNickname());
		 * System.out.println(updateNickname);
		 * 
		 * 
		 * assertThat(findUpdateUser).isSameAs(findUser);
		 * assertThat(passwordEncoder.matches(updatePassword,
		 * findUpdateUser.getPassword())).isTrue();
		 * assertThat(findUpdateUser.getNickname()).isEqualTo(user.getNickname());
		 * assertThat(findUpdateUser.getBirth()).isEqualTo(user.getBirth());
		 * assertThat(findUpdateUser.getNationality()).isEqualTo(user.getNationality());
		 * assertThat(findUpdateUser.getGender()).isEqualTo(user.getGender());
		 * assertThat(findUpdateUser.getPhone()).isEqualTo(user.getPhone());
		 * 
		 * }
		 * 
		 * @Test public void 성공_회원삭제() throws Exception { User user =
		 * User.builder().userId("user01").password("1234567890").nickname("user1").
		 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
		 * Role.USER).build(); userRepository.save(user);
		 * 
		 * userRepository.delete(user);
		 * 
		 * assertThrows(Exception.class, () ->
		 * userRepository.findByUserId(user.getUserId()).orElseThrow(() -> new
		 * Exception())); }
		 * 
		 * @Test public void existByNickname_정상작동() throws Exception { String nickname =
		 * "user"; User user =
		 * User.builder().userId("user01").password("1234567890").nickname("user").birth
		 * ("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(Role.
		 * USER).build(); userRepository.save(user);
		 * 
		 * clearAllCaches();
		 * 
		 * assertThat(userRepository.existsByNickname(nickname)).isTrue();
		 * assertThat(userRepository.existsByNickname(nickname+"123")).isFalse(); }
		 * 
		 * @Test public void existByEmail_정상작동() throws Exception { String email =
		 * "email"; User user =
		 * User.builder().userId("user01").password("1234567890").nickname("user123").
		 * email("email").birth("99.02.10").nationality("N").gender("M").phone(
		 * "010-1234-1234").role(Role.USER).build(); userRepository.save(user);
		 * 
		 * assertThat(userRepository.existsByEmail(email)).isTrue();
		 * assertThat(userRepository.existsByEmail(email+"123")).isFalse(); }
		 * 
		 * @Test public void findByUserId_정상작동() throws Exception { //given String
		 * userId = "user"; User user =
		 * User.builder().userId("user").password("1234567890").nickname("user123").
		 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
		 * Role.USER).build(); userRepository.save(user);
		 * 
		 * //when, then
		 * assertThat(userRepository.findByUserId(userId).get().getNickname()).isEqualTo
		 * (user.getNickname());
		 * assertThat(userRepository.findByUserId(userId).get().getBirth()).isEqualTo(
		 * user.getBirth());
		 * assertThat(userRepository.findByUserId(userId).get().getNationality()).
		 * isEqualTo(user.getNationality());
		 * assertThat(userRepository.findByUserId(userId).get().getGender()).isEqualTo(
		 * user.getGender());
		 * assertThat(userRepository.findByUserId(userId).get().getPhone()).isEqualTo(
		 * user.getPhone()); assertThrows(Exception.class, () ->
		 * userRepository.findByUserId(user+"01") .orElseThrow(() -> new Exception()));
		 * 
		 * }
		 * 
		 * @Test public void 회원가입시_생성시간_등록() throws Exception { User user =
		 * User.builder().userId("user01").password("1234567890").nickname("user123").
		 * birth("99.02.10").nationality("N").gender("M").phone("010-1234-1234").role(
		 * Role.USER).build(); userRepository.save(user);
		 * 
		 * User findUser= userRepository.findByUserId(user.getUserId()).orElseThrow(()
		 * -> new Exception());
		 * 
		 * assertThat(findUser.getCreateDate()).isNotNull();
		 * assertThat(findUser.getLastModifiedDate()).isNotNull();
		 * 
		 * }
		 * 
		 * }
		 */