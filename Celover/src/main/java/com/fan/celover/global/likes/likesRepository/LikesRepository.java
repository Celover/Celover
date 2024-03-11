package com.fan.celover.global.likes.likesRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fan.celover.global.likes.model.Likes;
import com.fan.celover.global.role.Category;

@Repository
public interface LikesRepository extends JpaRepository<Likes, Integer>{
	
	boolean existsByReferenceIdAndUserIdAndCategory(int referenceId, int userId, Category category);

	long countByReferenceIdAndCategory(int referenceId, Category category);
	
	int deleteByReferenceIdAndUserIdAndCategory(int referenceId, int userId, Category category);
	
	int deleteByUserId(int userId);
}
