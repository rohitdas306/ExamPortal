package com.exam.model;

import org.springframework.security.core.GrantedAuthority;
//this class model use for authentication and check login Admin or normal user(for security)
public class Authority implements GrantedAuthority{

	private String authority;
	
	
	public Authority(String authority) {
		this.authority = authority;
	}


	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.authority;
	}

}
