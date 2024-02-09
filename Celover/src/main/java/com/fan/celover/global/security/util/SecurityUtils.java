package com.fan.celover.global.security.util;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import com.fan.celover.domain.user.model.User;
import com.fan.celover.global.security.model.PrincipalDetails;
import com.fan.celover.global.security.service.PrincipalDetailsService;

@Component
public class SecurityUtils {

	public Authentication getAuthentication() {
		return SecurityContextHolder.getContext().getAuthentication();
	}

	public UserDetails getUserDetails() {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (auth != null && auth.getPrincipal() instanceof UserDetails) {
			return (UserDetails) auth.getPrincipal();
		}

		return null;
	}

	public void refreshSession(User user) {
		
		Collection<GrantedAuthority> authorities = new ArrayList<>();
		
		authorities.add(new SimpleGrantedAuthority(user.getRole().name()));
		
		System.out.println(authorities);
		
		UserDetails userDetails = new PrincipalDetails(user);
		
		Authentication newAuthentication = new UsernamePasswordAuthenticationToken(userDetails,
				null, authorities);
		
		SecurityContextHolder.getContext().setAuthentication(newAuthentication);
		
	}

}
