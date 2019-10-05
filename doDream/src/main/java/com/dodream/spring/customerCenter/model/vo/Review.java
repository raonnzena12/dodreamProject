package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;

public class Review {
	private int revNo;              // 번호
	private String revTitle;        // 제목
	private String revSubTitle;     // 부제목
	private String revContent;      // 내용	
	private Date revEnrollDate;     // 작성일 
	private Date revModifyDate;     // 수정일
	private String revStatus;       // 상태
	private int revRefPno;          // 프로젝트 번호 
	private int revWriter;          // 작성자번호(관리자)    
	private String reviewTnImg;     // 썸네일
	private String ReviewImg;	    // 리뷰 이미지
	private int revCount;           // 조회수
	private String revCategoryNo;   // 후기 카테고리번호
	public Review() {  
		
	} 

	public Review(int revNo, String revTitle, String revSubTitle, String revContent, Date revEnrollDate,
			Date revModifyDate, String revStatus, int revRefPno, int revWriter, String reviewTnImg, String reviewImg,
			int revCount) {
		super();
		this.revNo = revNo;
		this.revTitle = revTitle;
		this.revSubTitle = revSubTitle;
		this.revContent = revContent; 
		this.revEnrollDate = revEnrollDate;
		this.revModifyDate = revModifyDate;
		this.revStatus = revStatus;
		this.revRefPno = revRefPno;
		this.revWriter = revWriter;
		this.reviewTnImg = reviewTnImg;
		ReviewImg = reviewImg;
		this.revCount = revCount;
	}

	public int getRevNo() {
		return revNo;
	}

	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}

	public String getRevTitle() {
		return revTitle;
	}

	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}

	public String getRevSubTitle() {
		return revSubTitle;
	}

	public void setRevSubTitle(String revSubTitle) {
		this.revSubTitle = revSubTitle;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public Date getRevEnrollDate() {
		return revEnrollDate;
	}

	public void setRevEnrollDate(Date revEnrollDate) {
		this.revEnrollDate = revEnrollDate;
	}

	public Date getRevModifyDate() {
		return revModifyDate;
	}

	public void setRevModifyDate(Date revModifyDate) {
		this.revModifyDate = revModifyDate;
	}

	public String getRevStatus() {
		return revStatus;
	}

	public void setRevStatus(String revStatus) {
		this.revStatus = revStatus;
	}

	public int getRevRefPno() {
		return revRefPno;
	}

	public void setRevRefPno(int revRefPno) {
		this.revRefPno = revRefPno;
	}

	public int getRevWriter() {
		return revWriter;
	}

	public void setRevWriter(int revWriter) {
		this.revWriter = revWriter;
	}

	public String getReviewTnImg() {
		return reviewTnImg;
	}

	public void setReviewTnImg(String reviewTnImg) {
		this.reviewTnImg = reviewTnImg;
	}

	public String getReviewImg() {
		return reviewImg;
	}

	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public int getRevCount() {
		return revCount;
	}

	public void setRevCount(int revCount) {
		this.revCount = revCount;
	}

	public String getRevSubTitle() {
		return revSubTitle;
	}

	public void setRevSubTitle(String revSubTitle) {
		this.revSubTitle = revSubTitle;
	}

	public int getRevCategoryNo() {
		return revCategoryNo;
	}

	public void setRevCategoryNo(int revCategoryNo) {
		this.revCategoryNo = revCategoryNo;
	}

	@Override
	public String toString() {
		return "Review [revNo=" + revNo + ", revTitle=" + revTitle + ", revSubTitle=" + revSubTitle + ", revContent="
				+ revContent + ", revEnrollDate=" + revEnrollDate + ", revModifyDate=" + revModifyDate + ", revStatus="
				+ revStatus + ", revRefPno=" + revRefPno + ", revWriter=" + revWriter + ", reviewTnImg=" + reviewTnImg
				+ ", ReviewImg=" + ReviewImg + ", revCount=" + revCount + "]";
	}

	

}
