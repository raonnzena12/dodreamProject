package com.dodream.spring.member.model.vo;

public class AutoLogin {
	private String userEmail;
	private String userPwd;
	private boolean useCookie;
	
	public AutoLogin() {}
		
	public AutoLogin(String userEmail, String userPwd, boolean useCookie) {
		super();
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.useCookie = useCookie;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	@Override
	public String toString() {
		return "autoLogin [userEmail=" + userEmail + ", userPwd=" + userPwd + ", useCookie=" + useCookie + "]";
	}

	
	
	
}
