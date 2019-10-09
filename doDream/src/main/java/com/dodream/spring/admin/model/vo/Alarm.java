package com.dodream.spring.admin.model.vo;

import java.sql.Date;

public class Alarm {

	private int alNo;			// 알림번호
	private String alTitle;		// 알림 제목  
	private String alContent;	// 알림 내용
	private String alStatus;	// 알림 상태
	private Date alDate;		// 알림 날짜
	private int alCategory; 	// 알람 카테고리 1 프로젝트성공 2신고 3마감
	
	public Alarm() {}

	public Alarm(int alNo, String alTitle, String alContent, String alStatus, Date alDate, int alCategory) {
		super();
		this.alNo = alNo;
		this.alTitle = alTitle;
		this.alContent = alContent;
		this.alStatus = alStatus;
		this.alDate = alDate;
		this.alCategory = alCategory;
	}

	public int getAlNo() {
		return alNo;
	}

	public void setAlNo(int alNo) {
		this.alNo = alNo;
	}

	public String getAlTitle() {
		return alTitle;
	}

	public void setAlTitle(String alTitle) {
		this.alTitle = alTitle;
	}

	public String getAlContent() {
		return alContent;
	}

	public void setAlContent(String alContent) {
		this.alContent = alContent;
	}

	public String getAlStatus() {
		return alStatus;
	}

	public void setAlStatus(String alStatus) {
		this.alStatus = alStatus;
	}

	public Date getAlDate() {
		return alDate;
	}

	public void setAlDate(Date alDate) {
		this.alDate = alDate;
	}

	public int getAlCategory() {
		return alCategory;
	}

	public void setAlCategory(int alCategory) {
		this.alCategory = alCategory;
	}

	@Override
	public String toString() {
		return "Alarm [alNo=" + alNo + ", alTitle=" + alTitle + ", alContent=" + alContent + ", alStatus=" + alStatus
				+ ", alDate=" + alDate + ", alCategory=" + alCategory + "]";
	}
	

	
	
}
