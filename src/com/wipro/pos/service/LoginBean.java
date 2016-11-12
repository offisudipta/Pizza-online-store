package com.wipro.pos.service;

import org.springframework.stereotype.Service;

@Service
public class LoginBean {
	
	private String userId;
	private String firstName;
	private String lastName;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
	
	
	@Override
	public String toString() {
		return "LoginBean [userId=" + userId + ", firstName=" + firstName
				+ ", lastName=" + lastName + "]";
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
	
	
	
	
	

}
