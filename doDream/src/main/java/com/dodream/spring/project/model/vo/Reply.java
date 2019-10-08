package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class Reply {
	private int reNo;// 댓글 번호
	private String reContent;// 댓글 내용
	private String reStatus;// 댓글 상태 
	private Date reWriDate;// 댓글 작성일
	private String reDay;// 댓글 작성일 수정
	private Date reModiDate;// 댓글 수정일
	private int reRefPNo;// 프로젝트 번호
	private int reWriNo;// 작성자 번호
	private String reWriter;// 작성자 이름
	private String reWriImg;// 작성자 이미지
	private int reCGNo;//카테고리 번호
	private String reCGName;// 카테고리 이름
	private int reRSUser;//프로젝트에 펀딩 했는 지 유무
	
	
	public Reply() {}


	public Reply(int reNo, String reContent, String reStatus, Date reWriDate, String reDay, Date reModiDate,
			int reRefPNo, int reWriNo, String reWriter, String reWriImg, int reCGNo, String reCGName, int reRSUser) {
		super();
		this.reNo = reNo;
		this.reContent = reContent;
		this.reStatus = reStatus;
		this.reWriDate = reWriDate;
		this.reDay = reDay;
		this.reModiDate = reModiDate;
		this.reRefPNo = reRefPNo;
		this.reWriNo = reWriNo;
		this.reWriter = reWriter;
		this.reWriImg = reWriImg;
		this.reCGNo = reCGNo;
		this.reCGName = reCGName;
		this.reRSUser = reRSUser;
	}


	public int getReNo() {
		return reNo;
	}


	public void setReNo(int reNo) {
		this.reNo = reNo;
	}


	public String getReContent() {
		return reContent;
	}


	public void setReContent(String reContent) {
		this.reContent = reContent;
	}


	public String getReStatus() {
		return reStatus;
	}


	public void setReStatus(String reStatus) {
		this.reStatus = reStatus;
	}


	public Date getReWriDate() {
		return reWriDate;
	}


	public void setReWriDate(Date reWriDate) {
		this.reWriDate = reWriDate;
	}


	public String getReDay() {
		return reDay;
	}


	public void setReDay(String reDay) {
		this.reDay = reDay;
	}


	public Date getReModiDate() {
		return reModiDate;
	}


	public void setReModiDate(Date reModiDate) {
		this.reModiDate = reModiDate;
	}


	public int getReRefPNo() {
		return reRefPNo;
	}


	public void setReRefPNo(int reRefPNo) {
		this.reRefPNo = reRefPNo;
	}


	public int getReWriNo() {
		return reWriNo;
	}


	public void setReWriNo(int reWriNo) {
		this.reWriNo = reWriNo;
	}


	public String getReWriter() {
		return reWriter;
	}


	public void setReWriter(String reWriter) {
		this.reWriter = reWriter;
	}


	public String getReWriImg() {
		return reWriImg;
	}


	public void setReWriImg(String reWriImg) {
		this.reWriImg = reWriImg;
	}


	public int getReCGNo() {
		return reCGNo;
	}


	public void setReCGNo(int reCGNo) {
		this.reCGNo = reCGNo;
	}


	public String getReCGName() {
		return reCGName;
	}


	public void setReCGName(String reCGName) {
		this.reCGName = reCGName;
	}


	public int getReRSUser() {
		return reRSUser;
	}


	public void setReRSUser(int reRSUser) {
		this.reRSUser = reRSUser;
	}


	@Override
	public String toString() {
		return "Reply [reNo=" + reNo + ", reContent=" + reContent + ", reStatus=" + reStatus + ", reWriDate="
				+ reWriDate + ", reDay=" + reDay + ", reModiDate=" + reModiDate + ", reRefPNo=" + reRefPNo
				+ ", reWriNo=" + reWriNo + ", reWriter=" + reWriter + ", reWriImg=" + reWriImg + ", reCGNo=" + reCGNo
				+ ", reCGName=" + reCGName + ", reRSUser=" + reRSUser + "]";
	}


	
	
	
	
	
	
	
	
	
}
