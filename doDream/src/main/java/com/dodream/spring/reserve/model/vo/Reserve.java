package com.dodream.spring.reserve.model.vo;

import java.sql.Date;

public class Reserve {

	private int resNo; // 예약번호
	private String bKey; // 빌링키
	private int addi; // 추가 후원금
	private Date resDate; // 예약한 날짜
	private String resName; // 리워드 수령인 이름
	private int resContract; // 리워드 수령인 연락처
	private String resAddress; // 리워드 수령 주소
	private String resRequest; // 리워드 배송시 요청사항
	private int resUser; // 예약한 유저번호
	private int resRefPno; // 참조하는 프로젝트 번호
	private int resStatusNo; // 예약 스테이터스 ( 1 결제대기 2 결제완료 3 결제예약 취소 )
	private String pTitle;  			// 조인 시 필요한 프로젝트명
	private String userNickname;		// 조인 시 필요한 유저 닉네임
	
	public Reserve() {
	}

	public int getResNo() {
		return resNo;

    public Reserve(int rNo, String bKey, int addi, Date rDate, String rName, String rContract, String rAddress,
			String rRequest, int rUser, int rRefPno, int rStatusNo, String pTitle, String userNickname) {
		super();
		this.rNo = rNo;
		this.bKey = bKey;
		this.addi = addi;
		this.rDate = rDate;
		this.rName = rName;
		this.rContract = rContract;
		this.rAddress = rAddress;
		this.rRequest = rRequest;
		this.rUser = rUser;
		this.rRefPno = rRefPno;
		this.rStatusNo = rStatusNo;
		this.pTitle = pTitle;
		this.userNickname = userNickname;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public String getbKey() {
		return bKey;
	}

	public void setbKey(String bKey) {
		this.bKey = bKey;
	}

	public int getAddi() {
		return addi;
	}

	public void setAddi(int addi) {
		this.addi = addi;
	}

	public Date getResDate() {
		return resDate;
	}

	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getrContract() {
		return rContract;
	}

	public void setrContract(String rContract) {
		this.rContract = rContract;
	}

	public String getResAddress() {
		return resAddress;
	}

	public void setResAddress(String resAddress) {
		this.resAddress = resAddress;
	}

	public String getResRequest() {
		return resRequest;
	}

	public void setResRequest(String resRequest) {
		this.resRequest = resRequest;
	}

	public int getResUser() {
		return resUser;
	}

	public void setResUser(int resUser) {
		this.resUser = resUser;
	}

	public int getResRefPno() {
		return resRefPno;
	}

	public void setResRefPno(int resRefPno) {
		this.resRefPno = resRefPno;
	}

	public int getResStatusNo() {
		return resStatusNo;
	}

	public void setResStatusNo(int resStatusNo) {
		this.resStatusNo = resStatusNo;
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
		return "Reserve [resNo=" + resNo + ", bKey=" + bKey + ", addi=" + addi + ", resDate=" + resDate + ", resName="
				+ resName + ", resContract=" + resContract + ", resAddress=" + resAddress + ", resRequest=" + resRequest
				+ ", resUser=" + resUser + ", resRefPno=" + resRefPno + ", resStatusNo=" + resStatusNo + ", pTitle="
				+ pTitle + ", userNickname=" + userNickname + "]";
	}
}