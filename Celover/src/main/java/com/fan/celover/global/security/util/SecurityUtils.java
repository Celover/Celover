package com.fan.celover.global.security.util;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class SecurityUtils {

	public UserDetails getUserDetails(){
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		 if (auth != null && auth.getPrincipal() instanceof UserDetails) {
	            return (UserDetails) auth.getPrincipal();
		 }
		
		return null;
	}
}
