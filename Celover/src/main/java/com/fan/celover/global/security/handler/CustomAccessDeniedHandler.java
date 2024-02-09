package com.fan.celover.global.security.handler;

import java.io.IOException;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CustomAccessDeniedHandler implements AccessDeniedHandler{

	
	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {
        
		System.out.println("접근 거부된 페이지 URI :" + request.getRequestURI());
		
		if(request.getRequestURI().equals("/board-form")) {
			response.setContentType("text/html;charset=UTF-8");
			response.getWriter().println("<script>alert('추가정보 입력이 필요합니다.');"
					+ "window.location='/visitor/additional-info'</script>");
			return;
		}
	}
	
}
