package com.fan.celover.domain.board.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fan.celover.domain.board.model.Board;

public interface BoardRepository extends JpaRepository<Board, Integer> {

}
