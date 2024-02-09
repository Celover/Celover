package com.fan.celover.global.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fan.celover.global.security.util.SecurityUtils;

@Configuration
public class AppConfig {

    @Bean
    public SecurityUtils securityUtils() {
        return new SecurityUtils();
    }
}