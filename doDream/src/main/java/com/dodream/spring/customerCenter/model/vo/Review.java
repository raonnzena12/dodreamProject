package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;

public class Review {
	private int    revNo;         // 번호
	private String revTitle;      // 제목
	private String revContent;    // 내용
	private Date   revEnrollDate; // 작성일
	private Date   revModifyDate; // 수정일
	private String revStatus;     // 상태
	private int    revRefPno;     // 프로젝트 번호
	private int    revWriter;     // 작성자번호(관리자)
	private String reviewTnImg;   // 썸네일
	private String ReviewImg;	  // 리뷰 이미지
	private int    revConut;	  // 조회수
	private String revsubTitle;	  // 부제목
	private int    revCNo;	  // 부제목
	
	
	public Review() {  
		
	}


	public Review(int revNo, String revTitle, String revContent, Date revEnrollDate, Date revModifyDate,
			String revStatus, int revRefPno, int revWriter, String reviewTnImg, String reviewImg, int revConut,
			String revsubTitle, int revCNo) {
		super();
		this.revNo = revNo;
		this.revTitle = revTitle;
		this.revContent = revContent;
		this.revEnrollDate = revEnrollDate;
		this.revModifyDate = revModifyDate;
		this.revStatus = revStatus;
		this.revRefPno = revRefPno;
		this.revWriter = revWriter;
		this.reviewTnImg = reviewTnImg;
		ReviewImg = reviewImg;
		this.revConut = revConut;
		this.revsubTitle = revsubTitle;
		this.revCNo = revCNo;
	}


	/**
	 * @return the revNo
	 */
	public int getRevNo() {
		return revNo;
	}


	/**
	 * @param revNo the revNo to set
	 */
	public void setRevNo(int revNo) {
		this.revNo = revNo;
	}


	/**
	 * @return the revTitle
	 */
	public String getRevTitle() {
		return revTitle;
	}


	/**
	 * @param revTitle the revTitle to set
	 */
	public void setRevTitle(String revTitle) {
		this.revTitle = revTitle;
	}


	/**
	 * @return the revContent
	 */
	public String getRevContent() {
		return revContent;
	}


	/**
	 * @param revContent the revContent to set
	 */
	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}


	/**
	 * @return the revEnrollDate
	 */
	public Date getRevEnrollDate() {
		return revEnrollDate;
	}


	/**
	 * @param revEnrollDate the revEnrollDate to set
	 */
	public void setRevEnrollDate(Date revEnrollDate) {
		this.revEnrollDate = revEnrollDate;
	}


	/**
	 * @return the revModifyDate
	 */
	public Date getRevModifyDate() {
		return revModifyDate;
	}


	/**
	 * @param revModifyDate the revModifyDate to set
	 */
	public void setRevModifyDate(Date revModifyDate) {
		this.revModifyDate = revModifyDate;
	}


	/**
	 * @return the revStatus
	 */
	public String getRevStatus() {
		return revStatus;
	}


	/**
	 * @param revStatus the revStatus to set
	 */
	public void setRevStatus(String revStatus) {
		this.revStatus = revStatus;
	}


	/**
	 * @return the revRefPno
	 */
	public int getRevRefPno() {
		return revRefPno;
	}


	/**
	 * @param revRefPno the revRefPno to set
	 */
	public void setRevRefPno(int revRefPno) {
		this.revRefPno = revRefPno;
	}


	/**
	 * @return the revWriter
	 */
	public int getRevWriter() {
		return revWriter;
	}


	/**
	 * @param revWriter the revWriter to set
	 */
	public void setRevWriter(int revWriter) {
		this.revWriter = revWriter;
	}


	/**
	 * @return the reviewTnImg
	 */
	public String getReviewTnImg() {
		return reviewTnImg;
	}


	/**
	 * @param reviewTnImg the reviewTnImg to set
	 */
	public void setReviewTnImg(String reviewTnImg) {
		this.reviewTnImg = reviewTnImg;
	}


	/**
	 * @return the reviewImg
	 */
	public String getReviewImg() {
		return ReviewImg;
	}


	/**
	 * @param reviewImg the reviewImg to set
	 */
	public void setReviewImg(String reviewImg) {
		ReviewImg = reviewImg;
	}


	/**
	 * @return the revConut
	 */
	public int getRevConut() {
		return revConut;
	}


	/**
	 * @param revConut the revConut to set
	 */
	public void setRevConut(int revConut) {
		this.revConut = revConut;
	}


	/**
	 * @return the revsubTitle
	 */
	public String getRevsubTitle() {
		return revsubTitle;
	}


	/**
	 * @param revsubTitle the revsubTitle to set
	 */
	public void setRevsubTitle(String revsubTitle) {
		this.revsubTitle = revsubTitle;
	}


	/**
	 * @return the revCNo
	 */
	public int getRevCNo() {
		return revCNo;
	}


	/**
	 * @param revCNo the revCNo to set
	 */
	public void setRevCNo(int revCNo) {
		this.revCNo = revCNo;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Review [revNo=" + revNo + ", revTitle=" + revTitle + ", revContent=" + revContent + ", revEnrollDate="
				+ revEnrollDate + ", revModifyDate=" + revModifyDate + ", revStatus=" + revStatus + ", revRefPno="
				+ revRefPno + ", revWriter=" + revWriter + ", reviewTnImg=" + reviewTnImg + ", ReviewImg=" + ReviewImg
				+ ", revConut=" + revConut + ", revsubTitle=" + revsubTitle + ", revCNo=" + revCNo + "]";
	}
	
	
	
}
	
