package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;

public class Faq {
	private int fNo;
	private String fTitle;
	private String fContent;
	private Date fEnrollDate;
	private Date fModifyDate;
	private String fStatus;
	private int fWriter;

	public Faq() {
		// TODO Auto-generated constructor stub
	}

	// 전체 리스트
	public Faq(int fNo, String fTitle, String fContent, Date fEnrollDate, Date fModifyDate, String fStatus,
			int fWriter) {
		super();
		this.fNo = fNo;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fEnrollDate = fEnrollDate;
		this.fModifyDate = fModifyDate;
		this.fStatus = fStatus;
		this.fWriter = fWriter;
	}

	public int getfNo() {
		return fNo;
	}

	public void setfNo(int fNo) {
		this.fNo = fNo;
	}

	public String getfTitle() {
		return fTitle;
	}

	public void setfTitle(String fTitle) {
		this.fTitle = fTitle;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public Date getfEnrollDate() {
		return fEnrollDate;
	}

	public void setfEnrollDate(Date fEnrollDate) {
		this.fEnrollDate = fEnrollDate;
	}

	public Date getfModifyDate() {
		return fModifyDate;
	}

	public void setfModifyDate(Date fModifyDate) {
		this.fModifyDate = fModifyDate;
	}

	public String getfStatus() {
		return fStatus;
	}

	public void setfStatus(String fStatus) {
		this.fStatus = fStatus;
	}

	public int getfWriter() {
		return fWriter;
	}

	public void setfWriter(int fWriter) {
		this.fWriter = fWriter;
	}

	@Override
	public String toString() {
		return "Faq [fNo=" + fNo + ", fTitle=" + fTitle + ", fContent=" + fContent + ", fEnrollDate=" + fEnrollDate
				+ ", fModifyDate=" + fModifyDate + ", fStatus=" + fStatus + ", fWriter=" + fWriter + "]";
	}
}
