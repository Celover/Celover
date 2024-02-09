package com.fan.celover.global.security.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.oauth2.core.user.OAuth2User;

import com.fan.celover.domain.user.model.Role;
import com.fan.celover.domain.user.model.User;

import lombok.Getter;

@Getter
public class PrincipalDetails implements OAuth2User , UserDetails {
    private User user;
    private Map<String, Object> attributes;
    
    // 일반 로그인
    public PrincipalDetails(User user) {
        this.user=user;
    }

    // oauth 로그인
    public PrincipalDetails(User user, Map<String, Object> attributes) {
        this.user=user;
        this.attributes=attributes;
    }
    
    // 계정이 갖고있는 권한 목록을 리턴한다.
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> collect = new ArrayList<>();
        
        Role userRole = user.getRole();
        
        collect.add(new SimpleGrantedAuthority(userRole.name())); 
        
        return collect;
    }

    @Override
    public String getPassword() {
        return user.getPassword();
    }

    @Override
    public String getUsername() {
        return user.getUserId();
    }

    // 계정이 만료되지 않았는지 리턴한다 (true : 만료안됨)
    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    // 계정이 잠겨있지 않았는지 리턴한다 (true : 잠기지 않음)
    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    // 비밀번호가 만료되지 않았는지 리턴한다 (true : 만료안됨
    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    // 계정이 활성화(사용가능)인지 리턴한다 (true : 활성화)
    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public String getName() {
        return "name";
    }
}