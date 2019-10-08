package com.dodream.spring.admin.model.vo;

import java.sql.Date;

public class Alarm {

	private int alNo;			// 알림번호
	private String alSj;		// 알림 제목  
	private String alContent;	// 알림 내용
	private String alStatus;	// 알림 상태
	private Date alDate;		// 알림 날짜
	private int alRefPno;		// 프로젝트 번호
	private int alRefResNo;		// 결제 번호 
	private int alRefRepNo;		// 신고 번호 
	
	public Alarm() {}
	
	public Alarm(int alNo, String alSj, String alContent, String alStatus, Date alDate, int alRefPno, int alRefResNo,
			int alRefRepNo) {
		super();
		this.alNo = alNo;
		this.alSj = alSj;
		this.alContent = alContent;
		this.alStatus = alStatus;
		this.alDate = alDate;
		this.alRefPno = alRefPno;
		this.alRefResNo = alRefResNo;
		this.alRefRepNo = alRefRepNo;
	}
	public int getAlNo() {
		return alNo;
	}
	public void setAlNo(int alNo) {
		this.alNo = alNo;
	}
	public String getAlSj() {
		return alSj;
	}
	public void setAlSj(String alSj) {
		this.alSj = alSj;
	}
	public String getAlContent() {
		return alContent;
	}
	public void setAlContent(String alContent) {
		this.alContent = alContent;
	}
	public String getAlStatus() {
		return alStatus;
	}
	public void setAlStatus(String alStatus) {
		this.alStatus = alStatus;
	}
	public Date getAlDate() {
		return alDate;
	}
	public void setAlDate(Date alDate) {
		this.alDate = alDate;
	}
	public int getAlRefPno() {
		return alRefPno;
	}
	public void setAlRefPno(int alRefPno) {
		this.alRefPno = alRefPno;
	}
	public int getAlRefResNo() {
		return alRefResNo;
	}
	public void setAlRefResNo(int alRefResNo) {
		this.alRefResNo = alRefResNo;
	}
	public int getAlRefRepNo() {
		return alRefRepNo;
	}
	public void setAlRefRepNo(int alRefRepNo) {
		this.alRefRepNo = alRefRepNo;
	}
	@Override
	public String toString() {
		return "Alarm [alNo=" + alNo + ", alSj=" + alSj + ", alContent=" + alContent + ", alStatus=" + alStatus
				+ ", alDate=" + alDate + ", alRefPno=" + alRefPno + ", alRefResNo=" + alRefResNo + ", alRefRepNo="
				+ alRefRepNo + "]";
	}
	
	
	
}
