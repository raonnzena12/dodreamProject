package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;

public class Notice {
	private int nNo;             // 번호
	private String nTitle;       // 제목
	private String nContent;     // 내용
	private Date nEnrollDate;    // 작성일
	private Date nModifyDate;    // 수정일
	private String nStatus;      // 상태
	private int nWriter;         // 작성자(관리자번호)
	private String userNickname; // 작성자 이름 
	
	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public Notice(int nNo, String nTitle, String nContent, Date nEnrollDate, Date nModifyDate, String nStatus,
			int nWriter, String userNickname) {
		super();
		this.nNo = nNo;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nEnrollDate = nEnrollDate;
		this.nModifyDate = nModifyDate;
		this.nStatus = nStatus;
		this.nWriter = nWriter;
		this.userNickname = userNickname;
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

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	@Override
	public String toString() {
		return "Notice [nNo=" + nNo + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nEnrollDate=" + nEnrollDate
				+ ", nModifyDate=" + nModifyDate + ", nStatus=" + nStatus + ", nWriter=" + nWriter + ", userNickname="
				+ userNickname + "]";
	}

}
