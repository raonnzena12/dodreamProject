package com.dodream.spring.report.model.vo;

import java.sql.Date;

public class Report {

	private int repNo;
	private Date repDate;
	private String repContent;
	private int repRefPno;
	private int repWriter;
	private String repStatus;
	private String pTitle;  			// 조인 시 필요한 프로젝트명
	private String userNickname;		// 조인 시 필요한 유저 닉네임
	
	
	public Report() {
		// TODO Auto-generated constructor stub
	}


	public Report(int repNo, Date repDate, String repContent, int repRefPno, int repWriter, String repStatus,
			String pTitle, String userNickname) {
		super();
		this.repNo = repNo;
		this.repDate = repDate;
		this.repContent = repContent;
		this.repRefPno = repRefPno;
		this.repWriter = repWriter;
		this.repStatus = repStatus;
		this.pTitle = pTitle;
		this.userNickname = userNickname;
	}


	public int getRepNo() {
		return repNo;
	}


	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}


	public Date getRepDate() {
		return repDate;
	}


	public void setRepDate(Date repDate) {
		this.repDate = repDate;
	}


	public String getRepContent() {
		return repContent;
	}


	public void setRepContent(String repContent) {
		this.repContent = repContent;
	}


	public int getRepRefPno() {
		return repRefPno;
	}


	public void setRepRefPno(int repRefPno) {
		this.repRefPno = repRefPno;
	}


	public int getRepWriter() {
		return repWriter;
	}


	public void setRepWriter(int repWriter) {
		this.repWriter = repWriter;
	}


	public String getRepStatus() {
		return repStatus;
	}


	public void setRepStatus(String repStatus) {
		this.repStatus = repStatus;
	}


	public String getpTitle() {
		return pTitle;
	}


	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}


	public String getUserNickname() {
		return userNickname;
	}


	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}


	@Override
	public String toString() {
		return "Report [repNo=" + repNo + ", repDate=" + repDate + ", repContent=" + repContent + ", repRefPno="
				+ repRefPno + ", repWriter=" + repWriter + ", repStatus=" + repStatus + ", pTitle=" + pTitle
				+ ", userNickname=" + userNickname + "]";
	}
	
	
	
	
}