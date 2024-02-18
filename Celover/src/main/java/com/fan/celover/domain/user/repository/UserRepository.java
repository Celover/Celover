package com.fan.celover.domain.user.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.domain.user.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	
	/* findBy vs existsBy vs countBy
	 * count는 전체행을 조회한 후 조건에 맞는 값의 개수를 반환해준다.
	 * exist는 조회를 하다가 조건에 맞는 데이터가 있을 경우 반환해준다.
	 * 
	 * 따라서 단순히 존재 여부만 판단하는경우엔 bolean값을 반환하는 exist쿼리가 유리하다.
	 * 
	 * 하지만 Jpa의 existSBy 는 exist 쿼리를 날리는것이 아닌 
	 * count 쿼리를 날리기 때문에 테이블의 모든 행을 카운팅하는것이 아닐까 ?
	 * 그럼 countBy와 차이가 없는게 아닐까 ?
	 * --> No
	 * 
	 * 물론 count는 exist에 비해서 성능상 이슈가 있다.
	 * 하지만 @Query와 Querydsl에서는 exists를 사용할 수 없다.
	 * 그래서 select exists를 limit 1 로 대체해서 사용한다.
	 * 단, JpaRepository의 메소드 쿼리에선 내부적으로 limit 1를 사용하고 있어서 성능상 이슈가 없다.
	 */

	// 아이디 존재 여부 true, false 반환
	boolean existsByUserId(String userId);
	
	// 이메일 존재 여부 true, false 반환
	boolean existsByEmail(String email);
	
	// 닉네임 존재 여부 true, false 반환
	boolean existsByNickname(String nickname);
	
	// 아이디 User 반환
	/*
	 *  Optional
	 *  Java8 부터 추가된 컨테이너 클래스
	 *  NPE(NullPointerException)를 방지해준다.
	 *  그럼 항상 Optional을 쓰면 좋은게 아닌가 ?
	 *  --> No
	 *  * Optional은 값을 Wrapping 하고 다시 풀고, null일 경우엔 대체하는 
	 *  함수를 호출하는 등의 오버헤드가 있으므로 남발하여 사용할 경우 성능이 저하된다.
	 *  즉, 메소드의 반환값이 절대 null이 아니라면 Optional 사용을 지양해야된다.
	 */
	
	Optional<User> findByUserId(String userId);
	
//	Optional<User> findByEmailAndOauthType(String email, String oauthType);
	
}
