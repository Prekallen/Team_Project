package com.food.web.user.dto;

import org.springframework.stereotype.Component;

@Component
public class UserInfo {
	
	private boolean loginCheck;
	private String userId;
	private String userPwd;
	private int userNum;
	private String email;
	private boolean saveId;
	private String gUser;

	public String getgUser() {
		return gUser;
	}
	public void setgUser(String gUser) {
		this.gUser = gUser;
	}
	public boolean isLoginCheck() {
		return loginCheck;
	}
	public void setLoginCheck(boolean loginCheck) {
		this.loginCheck = loginCheck;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public int getUserNum() {
		return userNum;
	}
	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isSaveId() {
		return saveId;
	}
	public void setSaveId(boolean saveId) {
		this.saveId = saveId;
	}
	
	
	
}
