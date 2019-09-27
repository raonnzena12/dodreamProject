package com.dodream.spring.reserve.model.vo;

import java.sql.Date;

public class Reserve {

	private int rNo; // 예약번호
	private String bKey; // 빌링키
	private int addi; // 추가 후원금
	private Date rDate; // 예약한 날짜
	private String rName; // 리워드 수령인 이름
	private String rContract; // 리워드 수령인 연락처
	private String rAddress; // 리워드 수령 주소
	private String rRequest; // 리워드 배송시 요청사항
	private int rUser; // 예약한 유저번호
	private int rRefPno; // 참조하는 프로젝트 번호
	private int rStatusNo; // 예약 스테이터스 ( 1 결제대기 2 결제완료 3 결제예약 취소 )
	private String pTitle;  			// 조인 시 필요한 프로젝트명
	private String userNickname;		// 조인 시 필요한 유저 닉네임
	
	public Reserve() {
	}

	public Reserve(int rNo, String bKey, int addi, Date rDate, String rName, int rContract, String rAddress,
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

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
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

	public Date getrDate() {
		return rDate;
	}

	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public int getrContract() {
		return rContract;
	}

	public void setrContract(int rContract) {
		this.rContract = rContract;
	}

	public String getrAddress() {
		return rAddress;
	}

	public void setrAddress(String rAddress) {
		this.rAddress = rAddress;
	}

	public String getrRequest() {
		return rRequest;
	}

	public void setrRequest(String rRequest) {
		this.rRequest = rRequest;
	}

	public int getrUser() {
		return rUser;
	}

	public void setrUser(int rUser) {
		this.rUser = rUser;
	}

	public int getrRefPno() {
		return rRefPno;
	}

	public void setrRefPno(int rRefPno) {
		this.rRefPno = rRefPno;
	}

	public int getrStatusNo() {
		return rStatusNo;
	}

	public void setrStatusNo(int rStatusNo) {
		this.rStatusNo = rStatusNo;
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
		return "Reserve [rNo=" + rNo + ", bKey=" + bKey + ", addi=" + addi + ", rDate=" + rDate + ", rName=" + rName
				+ ", rContract=" + rContract + ", rAddress=" + rAddress + ", rRequest=" + rRequest + ", rUser=" + rUser
				+ ", rRefPno=" + rRefPno + ", rStatusNo=" + rStatusNo + ", pTitle=" + pTitle + ", userNickname="
				+ userNickname + "]";
	}
	
}