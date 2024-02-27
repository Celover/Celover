package com.fan.celover.global.tag.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.global.tag.model.Tag;

public interface TagRepository extends JpaRepository<Tag, Integer> {

	boolean existsByTagName(String tagName);
	
	// 태그를 앞에서 저장하고 찾기 때문에 null 일 수 없으므로 Optional은 빼자 
	Tag findByTagName(String tagName);
	
	List<Tag> findByTagNameIn(List<String> tagName);
}
