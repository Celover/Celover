package com.fan.celover.domain.board.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.domain.board.model.Board;
import com.fan.celover.global.role.Status;

public interface BoardRepository extends JpaRepository<Board, Integer> {

	Page<Board> findByTypeAndStatus(String type, Status status, Pageable pageable);
	
	Optional<Board> findByIdAndStatus(int id, Status status);
	
}
