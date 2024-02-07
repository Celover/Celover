package com.fan.celover.global.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;

import com.fan.celover.domain.user.service.OAuth2UserService;
import com.fan.celover.global.handler.CustomAccessDeniedHandler;
import com.fan.celover.global.handler.LoginFailureHandler;

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
	public LoginFailureHandler loginFailureHandler() {
		return new LoginFailureHandler();
	}

	@Bean
	public CustomAccessDeniedHandler customAccessDeniedHandler() {
	   return new CustomAccessDeniedHandler();
	}
	
//	@Autowired
//	private LoginFailureHandler loginFailureHandler;
//	@Autowired
//	private CustomAccessDeniedHandler customAccessDeniedHandler;
//	@Bean
//	AccessDeniedHandler customAccessDeniedHandler() {
//	    return (request, response, accessDeniedException) -> {
//	        // custom Handling here
//	    };
//	}

	@Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
	        .csrf(csrfConfig ->	csrfConfig
	        		.disable()
	        ) // csrf 토큰 비활성화
            .authorizeHttpRequests(request -> request
	        		.dispatcherTypeMatchers(DispatcherType.FORWARD).permitAll()
	                .requestMatchers("/", "/auth/**", "/login/**", "/js/**", "/favicon.ico", "/css/**", "/img/**", "/fontawesome-free-6.5.1-web/**").permitAll()
	                .requestMatchers("/visitor/**","/redirect").hasRole("VISITOR")
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