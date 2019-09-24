package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;

public class Review {
	private int rNo;
	private String rTitle;
	private String rContent;
	private Date rEnrollDate;
	private Date rModifyDate;
	private String rStatus;
	private int rPNo;
	private int nWriter;
	public Review() {
		// TODO Auto-generated constructor stub
	}
	public Review(int rNo, String rTitle, String rContent, Date rEnrollDate, Date rModifyDate, String rStatus, int rPNo,
			int nWriter) {
		super(); 
		this.rNo = rNo;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rEnrollDate = rEnrollDate;
		this.rModifyDate = rModifyDate;
		this.rStatus = rStatus;
		this.rPNo = rPNo;
		this.nWriter = nWriter;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getrEnrollDate() {
		return rEnrollDate;
	}
	public void setrEnrollDate(Date rEnrollDate) {
		this.rEnrollDate = rEnrollDate;
	}
	public Date getrModifyDate() {
		return rModifyDate;
	}
	public void setrModifyDate(Date rModifyDate) {
		this.rModifyDate = rModifyDate;
	}
	public String getrStatus() {
		return rStatus;
	}
	public void setrStatus(String rStatus) {
		this.rStatus = rStatus;
	}
	public int getrPNo() {
		return rPNo;
	}
	public void setrPNo(int rPNo) {
		this.rPNo = rPNo;
	}
	public int getnWriter() {
		return nWriter;
	}
	public void setnWriter(int nWriter) {
		this.nWriter = nWriter;
	}
	@Override
	public String toString() {
		return "Review [rNo=" + rNo + ", rTitle=" + rTitle + ", rContent=" + rContent + ", rEnrollDate=" + rEnrollDate
				+ ", rModifyDate=" + rModifyDate + ", rStatus=" + rStatus + ", rPNo=" + rPNo + ", nWriter=" + nWriter
				+ "]";
	}
}
