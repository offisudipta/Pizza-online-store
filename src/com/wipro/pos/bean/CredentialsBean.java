package com.wipro.pos.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "POS_TBL_User_Credentials")
public class CredentialsBean {

	@Id
	private String userId;
	private String password;
	private String userType;
	private int loginStatus;
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public int getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(int loginStatus) {
		this.loginStatus = loginStatus;
	}

	@Override
	public String toString() {
		return "CredentialsBean [userID=" + userId + ", password=" + password
				+ ", userType=" + userType + ", loginStatus=" + loginStatus
				+ "]";
	}

	
	
}
