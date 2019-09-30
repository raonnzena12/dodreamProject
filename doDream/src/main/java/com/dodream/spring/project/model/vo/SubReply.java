package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class SubReply {
	
	private int subNo;// 서브 댓글 번호
	private String subContent;// 서브 댓글 내용
	private String subStatus;// 서브 댓글 상태
	private Date subWriDate;// 서브 댓글 작성일
	private Date subModiDate;// 서브 댓글 수정일 
	private int subWriNo;// 서브 댓글 작성자 번호
	private String subWriter;// 서브 댓글 작성자 닉네임
	private String subWriImg;// 서브 댓글 작성자 이미지
	private int subRefRNo;// 서브 댓글 참조 댓글 번호
	
	public SubReply() {
		
	}

	public SubReply(int subNo, String subContent, String subStatus, Date subWriDate, Date subModiDate, int subWriNo,
			String subWriter, String subWriImg, int subRefRNo) {
		super();
		this.subNo = subNo;
		this.subContent = subContent;
		this.subStatus = subStatus;
		this.subWriDate = subWriDate;
		this.subModiDate = subModiDate;
		this.subWriNo = subWriNo;
		this.subWriter = subWriter;
		this.subWriImg = subWriImg;
		this.subRefRNo = subRefRNo;
	}

	public int getSubNo() {
		return subNo;
	}

	public void setSubNo(int subNo) {
		this.subNo = subNo;
	}

	public String getSubContent() {
		return subContent;
	}

	public void setSubContent(String subContent) {
		this.subContent = subContent;
	}

	public String getSubStatus() {
		return subStatus;
	}

	public void setSubStatus(String subStatus) {
		this.subStatus = subStatus;
	}

	public Date getSubWriDate() {
		return subWriDate;
	}

	public void setSubWriDate(Date subWriDate) {
		this.subWriDate = subWriDate;
	}

	public Date getSubModiDate() {
		return subModiDate;
	}

	public void setSubModiDate(Date subModiDate) {
		this.subModiDate = subModiDate;
	}

	public int getSubWriNo() {
		return subWriNo;
	}

	public void setSubWriNo(int subWriNo) {
		this.subWriNo = subWriNo;
	}

	public String getSubWriter() {
		return subWriter;
	}

	public void setSubWriter(String subWriter) {
		this.subWriter = subWriter;
	}

	public String getSubWriImg() {
		return subWriImg;
	}

	public void setSubWriImg(String subWriImg) {
		this.subWriImg = subWriImg;
	}

	public int getSubRefRNo() {
		return subRefRNo;
	}

	public void setSubRefRNo(int subRefRNo) {
		this.subRefRNo = subRefRNo;
	}

	@Override
	public String toString() {
		return "SubReply [subNo=" + subNo + ", subContent=" + subContent + ", subStatus=" + subStatus + ", subWriDate="
				+ subWriDate + ", subModiDate=" + subModiDate + ", subWriNo=" + subWriNo + ", subWriter=" + subWriter
				+ ", subWriImg=" + subWriImg + ", subRefRNo=" + subRefRNo + "]";
	}
	
	
	
	
	
	
	
	
}
