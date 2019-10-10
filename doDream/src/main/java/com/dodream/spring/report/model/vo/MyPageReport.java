package com.dodream.spring.report.model.vo;

import java.sql.Date;

public class MyPageReport {

	private int repNo; // 신고 번호 
	private Date repDate; //신고일자
	private String repContent; // 신고내용
	private int repRefPno; //신고한 프로젝트번호
	private int repWriter; //신고자(로그인유저)
	private String repStatus; //신고상태
	private String pTitle;  // 조인 시 필요한 프로젝트명
	private int reportRpNo; // 답변 번호 
	private int reportRpRefRno;			// 신고 번호 
	private String reportRpContent; // 답변 내용
	private Date reportRpDt;		// 답변 일자 
		
	public MyPageReport() {}

	public MyPageReport(int repNo, Date repDate, String repContent, int repRefPno, int repWriter, String repStatus,
			String pTitle, int reportRpNo, int reportRpRefRno, String reportRpContent, Date reportRpDt) {
		super();
		this.repNo = repNo;
		this.repDate = repDate;
		this.repContent = repContent;
		this.repRefPno = repRefPno;
		this.repWriter = repWriter;
		this.repStatus = repStatus;
		this.pTitle = pTitle;
		this.reportRpNo = reportRpNo;
		this.reportRpRefRno = reportRpRefRno;
		this.reportRpContent = reportRpContent;
		this.reportRpDt = reportRpDt;
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

	public int getReportRpNo() {
		return reportRpNo;
	}

	public void setReportRpNo(int reportRpNo) {
		this.reportRpNo = reportRpNo;
	}

	public int getReportRpRefRno() {
		return reportRpRefRno;
	}

	public void setReportRpRefRno(int reportRpRefRno) {
		this.reportRpRefRno = reportRpRefRno;
	}

	public String getReportRpContent() {
		return reportRpContent;
	}

	public void setReportRpContent(String reportRpContent) {
		this.reportRpContent = reportRpContent;
	}

	public Date getReportRpDt() {
		return reportRpDt;
	}

	public void setReportRpDt(Date reportRpDt) {
		this.reportRpDt = reportRpDt;
	}

	@Override
	public String toString() {
		return "MyPageReport [repNo=" + repNo + ", repDate=" + repDate + ", repContent=" + repContent + ", repRefPno="
				+ repRefPno + ", repWriter=" + repWriter + ", repStatus=" + repStatus + ", pTitle=" + pTitle
				+ ", reportRpNo=" + reportRpNo + ", reportRpRefRno=" + reportRpRefRno + ", reportRpContent="
				+ reportRpContent + ", reportRpDt=" + reportRpDt + "]";
	}
	
	
	
	
}
