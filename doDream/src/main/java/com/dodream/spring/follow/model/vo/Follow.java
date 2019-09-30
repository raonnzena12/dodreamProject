package com.dodream.spring.follow.model.vo;

import java.sql.Date;

public class Follow {
	
	private int followNo; //follow회원번호
	private int followerNo; //follower회원번호
	private String followName;
	private String followerName;
	private String followSelf; //자기소개
	private String followerSelf;
	private Date followDate; //none -> sysdate
	private Date followerDate; //none -> sysdate
	private String followPfImg; //프로필사진
	private String followerPfImg;
	
	public Follow() {}
	
	
	public Follow(int followNo, int followerNo, String followName, String followerName, String followSelf,
			String followerSelf, Date followDate, Date followerDate, String followPfImg, String followerPfImg) {
		super();
		this.followNo = followNo;
		this.followerNo = followerNo;
		this.followName = followName;
		this.followerName = followerName;
		this.followSelf = followSelf;
		this.followerSelf = followerSelf;
		this.followDate = followDate;
		this.followerDate = followerDate;
		this.followPfImg = followPfImg;
		this.followerPfImg = followerPfImg;
	}

	public int getFollowNo() {
		return followNo;
	}

	public void setFollowNo(int followNo) {
		this.followNo = followNo;
	}

	public int getFollowerNo() {
		return followerNo;
	}

	public void setFollowerNo(int followerNo) {
		this.followerNo = followerNo;
	}

	public String getFollowName() {
		return followName;
	}

	public void setFollowName(String followName) {
		this.followName = followName;
	}

	public String getFollowerName() {
		return followerName;
	}

	public void setFollowerName(String followerName) {
		this.followerName = followerName;
	}

	public String getFollowSelf() {
		return followSelf;
	}

	public void setFollowSelf(String followSelf) {
		this.followSelf = followSelf;
	}

	public String getFollowerSelf() {
		return followerSelf;
	}

	public void setFollowerSelf(String followerSelf) {
		this.followerSelf = followerSelf;
	}

	public Date getFollowDate() {
		return followDate;
	}

	public void setFollowDate(Date followDate) {
		this.followDate = followDate;
	}

	public Date getFollowerDate() {
		return followerDate;
	}

	public void setFollowerDate(Date followerDate) {
		this.followerDate = followerDate;
	}

	public String getFollowPfImg() {
		return followPfImg;
	}

	public void setFollowPfImg(String followPfImg) {
		this.followPfImg = followPfImg;
	}

	public String getFollowerPfImg() {
		return followerPfImg;
	}

	public void setFollowerPfImg(String followerPfImg) {
		this.followerPfImg = followerPfImg;
	}

	@Override
	public String toString() {
		return "Follow [followNo=" + followNo + ", followerNo=" + followerNo + ", followName=" + followName
				+ ", followerName=" + followerName + ", followSelf=" + followSelf + ", followerSelf=" + followerSelf
				+ ", followDate=" + followDate + ", followerDate=" + followerDate + ", followPfImg=" + followPfImg
				+ ", followerPfImg=" + followerPfImg + "]";
	}
	
	
}
