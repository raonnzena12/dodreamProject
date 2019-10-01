package com.dodream.spring.report.model.vo;

import java.sql.Date;

public class ReportReply {

	private int reportRpNo;  			// 답변 번호 
	private String reportRpContent; 	// 답변 내용
	private Date reportRpDt;			// 답변 일자 
	private int reportRpRefRno;			// 신고 번호 
	private int reportRpWriter;			// 답변자 
	private String userNickname;		// 신고자 닉네임
	private String reportContent;		// 신고내용
	
	 
	public ReportReply() {
		// TODO Auto-generated constructor stub
	} 


	public ReportReply(int reportRpNo, String reportRpContent, Date reportRpDt, int reportRpRefRno, int reportRpWriter,
			String userNickname, String reportContent) {
		super();
		this.reportRpNo = reportRpNo;
		this.reportRpContent = reportRpContent;
		this.reportRpDt = reportRpDt;
		this.reportRpRefRno = reportRpRefRno;
		this.reportRpWriter = reportRpWriter;
		this.userNickname = userNickname;
		this.reportContent = reportContent;
	}


	public int getReportRpNo() {
		return reportRpNo;
	}


	public void setReportRpNo(int reportRpNo) {
		this.reportRpNo = reportRpNo;
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


	public int getReportRpRefRno() {
		return reportRpRefRno;
	}


	public void setReportRpRefRno(int reportRpRefRno) {
		this.reportRpRefRno = reportRpRefRno;
	}


	public int getReportRpWriter() {
		return reportRpWriter;
	}


	public void setReportRpWriter(int reportRpWriter) {
		this.reportRpWriter = reportRpWriter;
	}


	public String getUserNickname() {
		return userNickname;
	}


	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}


	public String getReportContent() {
		return reportContent;
	}


	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}


	@Override
	public String toString() {
		return "ReportReply [reportRpNo=" + reportRpNo + ", reportRpContent=" + reportRpContent + ", reportRpDt="
				+ reportRpDt + ", reportRpRefRno=" + reportRpRefRno + ", reportRpWriter=" + reportRpWriter
				+ ", userNickname=" + userNickname + ", reportContent=" + reportContent + "]";
	}

	
	
}
