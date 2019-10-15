package com.dodream.spring.member.model.vo;

import java.sql.Date;

public class Member {

	private int userNo;
	private String userEmail;
	private String userNickname;
	private String userPwd;
	private String userEmailAuthYn;
	private String userAdminYn;
	private String userStatus;
	private Date userEnrollDate;
	private Date userLoginDate;
	private Date userModifyDate;
	private String userAddress;
	private String userPhone;
	private String userProfileImage;
	private String userSelf;
	private int pWriter;
	private int follow;
	private int follower;
		
	public Member() {}

	public Member(int userNo, String userEmail, String userNickname, String userPwd, String userEmailAuthYn,
			String userAdminYn, String userStatus, Date userEnrollDate, Date userLoginDate, Date userModifyDate,
			String userAddress, String userPhone, String userProfileImage, String userSelf, int pWriter) {
		super();
		this.userNo = userNo;
		this.userEmail = userEmail;
		this.userNickname = userNickname;
		this.userPwd = userPwd;
		this.userEmailAuthYn = userEmailAuthYn;
		this.userAdminYn = userAdminYn;
		this.userStatus = userStatus;
		this.userEnrollDate = userEnrollDate;
		this.userLoginDate = userLoginDate;
		this.userModifyDate = userModifyDate;
		this.userAddress = userAddress;
		this.userPhone = userPhone;
		this.userProfileImage = userProfileImage;
		this.userSelf = userSelf;
		this.pWriter = pWriter;
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

	public String getUserEmailAuthYn() {
		return userEmailAuthYn;
	}

	public void setUserEmailAuthYn(String userEmailAuthYn) {
		this.userEmailAuthYn = userEmailAuthYn;
	}

	public String getUserAdminYn() {
		return userAdminYn;
	}

	public void setUserAdminYn(String userAdminYn) {
		this.userAdminYn = userAdminYn;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

	public Date getUserEnrollDate() {
		return userEnrollDate;
	}

	public void setUserEnrollDate(Date userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}

	public Date getUserLoginDate() {
		return userLoginDate;
	}

	public void setUserLoginDate(Date userLoginDate) {
		this.userLoginDate = userLoginDate;
	}

	public Date getUserModifyDate() {
		return userModifyDate;
	}

	public void setUserModifyDate(Date userModifyDate) {
		this.userModifyDate = userModifyDate;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserProfileImage() {
		return userProfileImage;
	}

	public void setUserProfileImage(String userProfileImage) {
		this.userProfileImage = userProfileImage;
	}

	public String getUserSelf() {
		return userSelf;
	}

	public void setUserSelf(String userSelf) {
		this.userSelf = userSelf;
	}

	public int getpWriter() {
		return pWriter;
	}

	public void setpWriter(int pWriter) {
		this.pWriter = pWriter;
	}
	
	public int getFollow() {
		return follow;
	}


	public void setFollow(int follow) {
		this.follow = follow;
	}


	public int getFollower() {
		return follower;
	}


	public void setFollower(int follower) {
		this.follower = follower;
	}


	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userEmail=" + userEmail + ", userNickname=" + userNickname + ", userPwd="
				+ userPwd + ", userEmailAuthYn=" + userEmailAuthYn + ", userAdminYn=" + userAdminYn + ", userStatus="
				+ userStatus + ", userEnrollDate=" + userEnrollDate + ", userLoginDate=" + userLoginDate
				+ ", userModifyDate=" + userModifyDate + ", userAddress=" + userAddress + ", userPhone=" + userPhone
				+ ", userProfileImage=" + userProfileImage + ", userSelf=" + userSelf + ", pWriter=" + pWriter
				+ ", follow=" + follow + ", follower=" + follower + "]";
	}

}
