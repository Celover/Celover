package com.fan.celover.global.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

import com.fan.celover.domain.user.service.OAuth2UserService;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig {
	
	@Autowired
	private OAuth2UserService OAuth2UserService;
	
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
	        .csrf(csrfConfig ->	csrfConfig
	        		.disable()
	        ) // csrf 토큰 비활성화
            .authorizeHttpRequests(request -> request
	        		.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
	                .requestMatchers("/", "/auth/**", "/login/**", "/js/**", "/css/**", "/img/**", "/fontawesome-free-6.5.1-web/**").permitAll()
	                .anyRequest().authenticated()
            )
            .formLogin(login -> login
	                .loginPage("/auth/login-form")
	                .loginProcessingUrl("/auth/login")
	                .usernameParameter("userId")
	                .passwordParameter("password")
	                .defaultSuccessUrl("/", true)
	                .permitAll()
            )
            .oauth2Login(oauth2 -> oauth2
	                .loginPage("/auth/login-form")
            		.defaultSuccessUrl("/", true)
            		.userInfoEndpoint(endpoint -> endpoint
            				.userService(OAuth2UserService))
            		
    		);
 
        return http.build();
    }
}