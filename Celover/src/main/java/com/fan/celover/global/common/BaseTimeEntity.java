package com.fan.celover.global.common;

import java.time.LocalDateTime;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;

@EntityListeners(AuditingEntityListener.class) 
@MappedSuperclass
@Getter
public abstract class BaseTimeEntity {
	
	
	/* 
	 * - @EntityListeners(AuditingEntityListener.class) 
	 * Spring Data JPA에서 시간에 대해서 자동으로 값을 넣어주는 기능
	 * 
	 * - @MappedSuperclass
	 * 하나의 엔티티에서만 사용하지않고 여러 엔티티에서 공통적으로 수정시간 등록시간을 사용하기 때문에 
	 * 이것을 사용하여 여러 엔티티가 상속 받을 수 있도록 함
	 * 
	 */
	 

	@CreatedDate // 생성시간
	@Column(updatable = false)
	private LocalDateTime createDate;
	
	@LastModifiedDate // 수정시간
	@Column
	private LocalDateTime lastModifiedDate;
	
}
