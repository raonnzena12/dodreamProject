package com.dodream.spring.report.model.vo;

import java.sql.Date;

public class ReportVo {

	private int reportRpNo;
	private String reportRpContent;
	private Date reportRpDt;
	private int reportRpRefPno;
	private String reportWriter;
	private String reportRpWriter; 
	private String reportContent; 
	
	public ReportVo() {
		// TODO Auto-generated constructor stub
	} 

	public ReportVo(int reportRpNo, String reportRpContent, Date reportRpDt, int reportRpRefPno, String reportWriter,
			String reportRpWriter, String reportContent) {
		super();
		this.reportRpNo = reportRpNo;
		this.reportRpContent = reportRpContent;
		this.reportRpDt = reportRpDt;
		this.reportRpRefPno = reportRpRefPno;
		this.reportWriter = reportWriter;
		this.reportRpWriter = reportRpWriter;
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

	public int getReportRpRefPno() {
		return reportRpRefPno;
	}

	public void setReportRpRefPno(int reportRpRefPno) {
		this.reportRpRefPno = reportRpRefPno;
	}

	public String getReportWriter() {
		return reportWriter;
	}

	public void setReportWriter(String reportWriter) {
		this.reportWriter = reportWriter;
	}

	public String getReportRpWriter() {
		return reportRpWriter;
	}

	public void setReportRpWriter(String reportRpWriter) {
		this.reportRpWriter = reportRpWriter;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	@Override
	public String toString() {
		return "ReportVo [reportRpNo=" + reportRpNo + ", reportRpContent=" + reportRpContent + ", reportRpDt="
				+ reportRpDt + ", reportRpRefPno=" + reportRpRefPno + ", reportWriter=" + reportWriter
				+ ", reportRpWriter=" + reportRpWriter + ", reportContent=" + reportContent + "]";
	}
	
	
}
