package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class DetailReport {
	
	private int repNo;
	private Date repDate;
	private String repContent;
	private int repRefPno;
	private int repWriter;
	private String repStatus;
	
	public DetailReport() {

	}
	
	public DetailReport(int repNo, Date repDate, String repContent, int repRefPno, int repWriter, String repStatus) {
		super();
		this.repNo = repNo;
		this.repDate = repDate;
		this.repContent = repContent;
		this.repRefPno = repRefPno;
		this.repWriter = repWriter;
		this.repStatus = repStatus;
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
	
	@Override
	public String toString() {
		return "DetailReport [repNo=" + repNo + ", repDate=" + repDate + ", repContent=" + repContent + ", repRefPno="
				+ repRefPno + ", repWriter=" + repWriter + ", repStatus=" + repStatus + "]";
	}
	
	
	
	
}
