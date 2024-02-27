package com.fan.celover.global.tag.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.domain.board.model.BoardTag;

public interface BoardTagRepository extends JpaRepository<BoardTag, Integer> {

	void deleteByBoardId(int boardId);
	
	List<BoardTag> findByBoardId(int boardId);
	
}
