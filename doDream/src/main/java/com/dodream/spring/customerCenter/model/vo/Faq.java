package com.dodream.spring.customerCenter.model.vo;

import java.sql.Date;
 
public class Faq {
	private int    fNo;         // 번호 
	private String fTitle;      // 제목
	private String fContent;    // 내용
	private Date   fEnrollDate; // 작성일
	private Date   fModifyDate; // 수정일
	private String fStatus;     // 상태
	private int    fWriter;     // 작성자(관리자)
	private String userNickname; // 작성자명
	
	public Faq() {
	}

	public Faq(int fNo, String fTitle, String fContent, Date fEnrollDate, Date fModifyDate, String fStatus, int fWriter,
			String userNickname) {
		super();
		this.fNo = fNo;
		this.fTitle = fTitle;
		this.fContent = fContent;
		this.fEnrollDate = fEnrollDate;
		this.fModifyDate = fModifyDate;
		this.fStatus = fStatus;
		this.fWriter = fWriter;
		this.userNickname = userNickname;
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

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	@Override
	public String toString() {
		return "Faq [fNo=" + fNo + ", fTitle=" + fTitle + ", fContent=" + fContent + ", fEnrollDate=" + fEnrollDate
				+ ", fModifyDate=" + fModifyDate + ", fStatus=" + fStatus + ", fWriter=" + fWriter + ", userNickname="
				+ userNickname + "]";
	}

	// 전체 리스트
	
}
