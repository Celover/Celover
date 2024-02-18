package com.fan.celover.global.common.dto;

import com.fan.celover.domain.user.User;

import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import lombok.Data;

@Entity
@Data
public class Fan{
	
	@EmbeddedId
	private FanPage fanPageName;
	
	private String grade;
}
