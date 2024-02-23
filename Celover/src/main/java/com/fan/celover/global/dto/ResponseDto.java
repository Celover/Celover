package com.fan.celover.global.dto;

import com.nimbusds.jose.shaded.gson.Gson;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Builder
public class ResponseDto<T> {

	int status;
	Object msg;
	T data;

	public ResponseDto(int status, Object obj, T data) {
		super();
		this.status = status;
		this.msg = obj;
		this.data = data;
	}

	public ResponseDto(int status, T data) {
		super();
		this.status = status;
		this.data = data;
	}

	
	
}