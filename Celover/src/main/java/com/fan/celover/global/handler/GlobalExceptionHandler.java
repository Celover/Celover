package com.fan.celover.global.handler;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import com.fan.celover.global.dto.ResponseDto;

@ControllerAdvice // 어느파일에서나 Exception이 발생해도 이 함수를 타게하기 위한 어노테이션
@RestController
public class GlobalExceptionHandler {

	//
	@ExceptionHandler(value = Exception.class)
	public ResponseDto<String> handleArgumentException(Exception e) {
		System.out.println("GlobalExceptionHandler 호출");

		System.out.println(e.getMessage());
		
		return new ResponseDto<String>(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage());

	}

	/*
	 * @Validated로 바꾸기전 코드 (여러 message를 배열로 만들어서 전송)
	 * ArrayList<String> messageList = new ArrayList<>();
	 * 
	 * // ConstraintViolationException 오류 발생 (dto에서 유효성 위배) if(e instanceof
	 * ConstraintViolationException) {
	 * 
	 * System.out.println("ConstraintViolationException");
	 * 
	 * ConstraintViolationException constraintViolationException =
	 * (ConstraintViolationException) e;
	 * 
	 * // constraintViolationException의 constraintViolations 객체 호출
	 * Set<ConstraintViolation<?>> constraintViolations =
	 * constraintViolationException.getConstraintViolations();
	 * 
	 * // PropertyPath()를 제외한 message만 추출해서 배열에 담아준다.
	 * messageList.addAll(constraintViolations.stream() .map(cv -> cv == null ?
	 * "null" : cv.getMessage()) .collect(Collectors.toList())); }else {
	 * messageList.add(e.getMessage()); }
	 * 
	 * return new
	 * ResponseDto<ArrayList<String>>(HttpStatus.INTERNAL_SERVER_ERROR.value(),
	 * messageList);
	 */

}
