package com.fan.celover.global.likes.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.likes.dto.LikeCountResponseDto;
import com.fan.celover.global.likes.likesRepository.LikesRepository;
import com.fan.celover.global.likes.model.Likes;
import com.fan.celover.global.role.Category;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LikesService {
	
	@Autowired
	private LikesRepository likesRepository;
	
	@Transactional
	public LikeCountResponseDto selectBoardLikes(int boardId, int userId) {
		
		System.out.println("boardId : " + boardId);
		System.out.println("principalDetails : " + userId);
		
		// 내가 좋아요 했는지 확인
		boolean result = likesRepository.existsByReferenceIdAndUserIdAndCategory(boardId, userId, Category.BOARD);

		// 좋아요 갯수 출력
		long count = likesRepository.countByReferenceIdAndCategory(boardId, Category.BOARD);
		
		return new LikeCountResponseDto(result, count);
		
	}
	
	@Transactional
	public LikeCountResponseDto updateBoardLikes(int boardId, User user) {
		
		// 내가 좋아요 했는지 확인
		boolean result = likesRepository.existsByReferenceIdAndUserIdAndCategory(boardId, user.getId(), Category.BOARD);
		
		if(result == true) { // 좋아요가 있는 경우
			// delete 좋아요
			System.out.println("좋아요 취소");
			likesRepository.deleteByReferenceIdAndUserIdAndCategory(boardId, user.getId(), Category.BOARD);
		}else { // 좋아요 없는 경우
			// insert 좋아요
			System.out.println("좋아요 추가");
			Likes likes = Likes.builder().referenceId(boardId).user(user).category(Category.BOARD).build();
			likesRepository.save(likes);
		}
		
		return new LikeCountResponseDto(likesRepository.existsByReferenceIdAndUserIdAndCategory(boardId, user.getId(), Category.BOARD), likesRepository.countByReferenceIdAndCategory(boardId, Category.BOARD));
		
	}

	
	
}
