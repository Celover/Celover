package com.fan.celover.global.security.service;

import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fan.celover.domain.user.model.User;
import com.fan.celover.domain.user.repository.UserRepository;
import com.fan.celover.global.security.model.PrincipalDetails;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PrincipalDetailsService implements UserDetailsService{
	
	@Autowired
	private UserRepository userRepository;
	
    @Override
    public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {
    	try {
    		Optional<User> user= userRepository.findByUserId(userId);
    		return new PrincipalDetails(user.get());
    	}catch (NoSuchElementException e) {
    		throw new UsernameNotFoundException("NoSuchElementException");
    	}
    	
    }
    

}
