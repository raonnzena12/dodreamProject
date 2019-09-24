package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;

public class Notice {
	private int nNo;
	private String nTitle;
	private String nContent;
	private Date nEnrollDate;
	private Date nModifyDate;
	private String nStatus;
	private int nWriter;

	public Notice() {
		// TODO Auto-generated constructor stub
	}
 
	public Notice(int nNo, String nTitle, String nContent, Date nEnrollDate, Date nModifyDate, String nStatus,
			int nWriter) {
		super();
		this.nNo = nNo;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nEnrollDate = nEnrollDate;
		this.nModifyDate = nModifyDate;
		this.nStatus = nStatus;
		this.nWriter = nWriter;
	}

	public int getnNo() {
		return nNo;
	}

	public void setnNo(int nNo) {
		this.nNo = nNo;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public Date getnEnrollDate() {
		return nEnrollDate;
	}

	public void setnEnrollDate(Date nEnrollDate) {
		this.nEnrollDate = nEnrollDate;
	}

	public Date getnModifyDate() {
		return nModifyDate;
	}

	public void setnModifyDate(Date nModifyDate) {
		this.nModifyDate = nModifyDate;
	}

	public String getnStatus() {
		return nStatus;
	}

	public void setnStatus(String nStatus) {
		this.nStatus = nStatus;
	}

	public int getnWriter() {
		return nWriter;
	}

	public void setnWriter(int nWriter) {
		this.nWriter = nWriter;
	}

	@Override
	public String toString() {
		return "Notice [nNo=" + nNo + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nEnrollDate=" + nEnrollDate
				+ ", nModifyDate=" + nModifyDate + ", nStatus=" + nStatus + ", nWriter=" + nWriter + "]";
	}
	
}
