package com.fan.celover.domain.board.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fan.celover.domain.board.model.Board;
import com.fan.celover.global.role.Status;

@Repository
public interface BoardRepository extends JpaRepository<Board, Integer> {

//	Page<Board> findByTypeAndStatus(String type, Status status, Pageable pageable);
	
	Optional<Board> findByIdAndStatus(int id, Status status);
	
	Optional<Board> findByIdAndUserId(int id, int userId);
	
	Optional<Board> findByIdAndStatusAndUserId(int id, Status status, int userId);

}