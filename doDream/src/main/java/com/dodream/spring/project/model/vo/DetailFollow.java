package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class DetailFollow {
	
	private int followNo;
	private int followerNo;
	private Date followDate;
	private Date followerDate;
	
	public DetailFollow() {
		
	}

	public DetailFollow(int followNo, int followerNo, Date followDate, Date followerDate) {
		super();
		this.followNo = followNo;
		this.followerNo = followerNo;
		this.followDate = followDate;
		this.followerDate = followerDate;
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

	@Override
	public String toString() {
		return "DetailFollow [followNo=" + followNo + ", followerNo=" + followerNo + ", followDate=" + followDate
				+ ", followerDate=" + followerDate + "]";
	}
	
	
	
	
	
	
	
}
