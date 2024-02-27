package com.fan.celover.global.tag.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fan.celover.domain.board.dto.BoardTagResponseDto;
import com.fan.celover.domain.board.model.Board;
import com.fan.celover.domain.board.model.BoardTag;
import com.fan.celover.domain.board.repository.BoardRepository;
import com.fan.celover.global.tag.dto.TagResponseDto;
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
	
	@Transactional
	public void updateTag(Board board, List<String> tagList) {
		
		System.out.println("tagList : " + tagList);
		
		// 먼저 현재 테그가 DB에 있는지 확인. 있으면 가져온다.
		List<Tag> tags = tagRepository.findByTagNameIn(tagList);

		List<Tag> newTag = new ArrayList<>();

		for (String s : tagList) {
			// List<Tag>의 tagName으로 list를 만들고 수정된 태그와 비교 후 없는 태그만 newTag에 추가
			if (!(tags.stream().map(Tag::getTagName).collect(Collectors.toList())).contains(s)) {
				newTag.add(Tag.builder().tagName(s).build());
			}
		}
		
		// 새로운 태그 DB에 저장
		List<Tag> saveTags = tagRepository.saveAll(newTag);

		// tags 와 saveTags를 합치면 추가해야되는 List<Tag> 가 된다.
		tags.addAll(saveTags);
		
		// BoardTag에서 더 이상 사용하지 않으면 Tag에서 삭제시키는 작업 필요
		// 하지만 사용자가 태그 수정할때마다 쿼리를 실행하기엔 부하가 크다.
		// 관리자페이지에서 정리해주는 버튼을 만들거나, 스케줄러로 며칠에 한번씩 업데이트
		
		// 기존 데이터를 삭제하기 전에 id를 가져온다.
		// List<Integer> originBoardTagIds = (boardTagRepository.findByBoardId(board.getId())).stream().map(BoardTag::getId).collect(Collectors.toList());
		
		// 기존 데이터 삭제. 데이터가 많지 않기 때문에 업데이트가 아닌 그냥 한번에 delete 처리한 후 insert
		boardTagRepository.deleteByBoardId(board.getId());
		
		List<BoardTag> boardTags = new ArrayList<>();
		
		for(Tag tag : tags) {
			boardTags.add(BoardTag.builder().board(board).tag(tag).build());
		}
		
		boardTagRepository.saveAll(boardTags);
	}
	
}
