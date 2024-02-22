package com.fan.celover.global.tag.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.model.BoardTag;
import com.fan.celover.global.tag.model.Tag;
import com.fan.celover.global.tag.repository.BoardTagRepository;
import com.fan.celover.global.tag.repository.TagRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TagService {

	@Autowired
	private TagRepository tagRepository;
	
	@Autowired
	private BoardTagRepository boardTagRepository;


	@Transactional
	public void saveTag(Board board, List<String> tagList) {

		if (tagList.size() > 0) { // 태그가 들어있을 경우

			for (int i = 0; i < tagList.size(); i++) {
				
				// DB에 해당 태그가 들어있는지 확인 (boolean)
				if(!tagRepository.existsByTagName(tagList.get(i))){ // 태그가 없을 경우
					
					// 태그 저장
					Tag newTag = Tag.builder().tagName(tagList.get(i)).build(); 
					tagRepository.save(newTag);
					
				}
				
				Tag tag = tagRepository.findByTagName(tagList.get(i));
				
				BoardTag boardTag = BoardTag.builder().board(board).tag(tag).build();
				
				boardTagRepository.save(boardTag);
			}
		}else {
			return;
		}

	}
	
}
