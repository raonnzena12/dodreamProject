package com.dodream.spring.member.model.vo;

import java.sql.Date;

public class Member {

	private int userNo;
	private String userEmail;
	private String userNickname;
	private String userPwd;
	private char userEmailAuthYn;
	private char userAdminYn;
	private char userStatus;
	private Date userEnrollDate;
	private Date userUpdateDate;
	
	public Member() {}
	
	public Member(int userNo, String userEmail, String userNickname, String userPwd, char userEmailAuthYn,
			char userAdminYn, char userStatus, Date userEnrollDate, Date userUpdateDate) {
		super();
		this.userNo = userNo;
		this.userEmail = userEmail;
		this.userNickname = userNickname;
		this.userPwd = userPwd;
		this.userEmailAuthYn = userEmailAuthYn;
		this.userAdminYn = userAdminYn;
		this.userStatus = userStatus;
		this.userEnrollDate = userEnrollDate;
		this.userUpdateDate = userUpdateDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public char getUserEmailAuthYn() {
		return userEmailAuthYn;
	}

	public void setUserEmailAuthYn(char userEmailAuthYn) {
		this.userEmailAuthYn = userEmailAuthYn;
	}

	public char getUserAdminYn() {
		return userAdminYn;
	}

	public void setUserAdminYn(char userAdminYn) {
		this.userAdminYn = userAdminYn;
	}

	public char getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(char userStatus) {
		this.userStatus = userStatus;
	}

	public Date getUserEnrollDate() {
		return userEnrollDate;
	}

	public void setUserEnrollDate(Date userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}

	public Date getUserUpdateDate() {
		return userUpdateDate;
	}

	public void setUserUpdateDate(Date userUpdateDate) {
		this.userUpdateDate = userUpdateDate;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userEmail=" + userEmail + ", userNickname=" + userNickname + ", userPwd="
				+ userPwd + ", userEmailAuthYn=" + userEmailAuthYn + ", userAdminYn=" + userAdminYn + ", userStatus="
				+ userStatus + ", userEnrollDate=" + userEnrollDate + ", userUpdateDate=" + userUpdateDate + "]";
	}
	
	
}
