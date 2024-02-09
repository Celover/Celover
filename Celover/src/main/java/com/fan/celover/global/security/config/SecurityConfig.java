package com.fan.celover.global.security.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;

import com.fan.celover.global.security.handler.CustomAccessDeniedHandler;
import com.fan.celover.global.security.handler.LoginFailureHandler;
import com.fan.celover.global.security.service.OAuth2UserService;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig {
	
	@Autowired
	private OAuth2UserService OAuth2UserService;
	
	@Bean
	// 사용자의 자격증명을 검증하는 Bean 생성
	public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
		return authenticationConfiguration.getAuthenticationManager();
	}

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public LoginFailureHandler loginFailureHandler() {
		return new LoginFailureHandler();
	}

	@Bean
	public CustomAccessDeniedHandler customAccessDeniedHandler() {
	   return new CustomAccessDeniedHandler();
	}
	
	
	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
	        .csrf(csrfConfig ->	csrfConfig
	        		.disable()
	        ) // csrf 토큰 비활성화
            .authorizeHttpRequests(request -> request
	        		.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
	                .requestMatchers("/", "/auth/**", "/redirect", "/login/**", "/js/**", "/favicon.ico", "/css/**", "/img/**", "/fontawesome-free-6.5.1-web/**").permitAll()
	                .requestMatchers("/visitor/**").hasRole("VISITOR")
	                .requestMatchers("/mypage/**").hasAnyRole("USER","ADMIN")
	                .anyRequest()
//	                .permitAll()
	                .hasAnyRole("USER","ADMIN")
            )
            .exceptionHandling(handling -> handling
            		.accessDeniedHandler(customAccessDeniedHandler()))
            .formLogin(login -> login
	                .loginPage("/auth/login-form")
	                .loginProcessingUrl("/auth/login")
	                .usernameParameter("userId")
	                .passwordParameter("password")
	                .defaultSuccessUrl("/", true)
	                .failureHandler(loginFailureHandler())
	                .permitAll()
            )
            .oauth2Login(oauth2 -> oauth2
	                .loginPage("/auth/login-form")
            		.defaultSuccessUrl("/redirect")
            		.userInfoEndpoint(endpoint -> endpoint
            				.userService(OAuth2UserService))
            		
    		);
 
        return http.build();
    }
}