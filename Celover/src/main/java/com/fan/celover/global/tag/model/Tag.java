package com.fan.celover.global.tag.model;

import java.util.List;

import com.fan.celover.domain.board.model.BoardTag;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED) // 기본 생성자를 생성하지만 다른 패키지에 소속된 클래스의 접근을 막는다.
@AllArgsConstructor
@Builder
@ToString
@Entity
public class Tag {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@NotBlank
	@Column(nullable = false)
	private String tagName;
	
    @OneToMany(mappedBy = "tag", fetch = FetchType.LAZY)
    @JsonIgnoreProperties({"tag"})
    private List<BoardTag> BoardTags;

}
