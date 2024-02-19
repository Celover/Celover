package com.fan.celover.global.tag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.global.tag.model.Tag;

public interface TagRepository extends JpaRepository<Tag, Integer> {

	boolean existsByTagName(String tagName);
	
	// null 일 수 없으므로 Optional은 빼자 
	Tag findByTagName(String tagName);
}
