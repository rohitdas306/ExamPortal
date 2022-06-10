package com.exam.model;
//this class model use for after accepting username and pass then given token(for security)
public class JwtResponse {

	String token;

	public JwtResponse() {
	}

	public JwtResponse(String token) {
		
		this.token = token;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
	
	
}
