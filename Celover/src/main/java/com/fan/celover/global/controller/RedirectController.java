package com.fan.celover.global.controller;

import java.util.Collection;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class RedirectController {
	
	@GetMapping("/redirect")
	public String redirect(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

        System.out.println("redirect Controller 실행");
        
        if (authorities.contains(new SimpleGrantedAuthority("ROLE_VISITOR"))) {
        	System.out.println("ROLE_VISITOR");
            return "redirect:/visitor/additional-info"; // ADMIN 권한이면 /admin/dashboard로 리다이렉트
        } else {
        	System.out.println("ROLE_OTHERS");
            return "redirect:/"; // 그 외의 경우엔 /user/profile로 리다이렉트
        }
	}
}
