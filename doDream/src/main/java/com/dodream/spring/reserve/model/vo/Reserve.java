package com.dodream.spring.reserve.model.vo;

import java.sql.Date;

public class Reserve {

	private int resNo; // 예약번호
	private String bKey; // 빌링키
	private int addi; // 추가 후원금
	private Date resDate; // 예약한 날짜
	private String resName; // 리워드 수령인 이름
	private String resContact; // 리워드 수령인 연락처
	private String resAddress; // 리워드 수령 주소
	private String resRequest; // 리워드 배송시 요청사항
	private int resUser; // 예약한 유저번호
	private int resRefPno; // 참조하는 프로젝트 번호
	private int resStatusNo; // 예약 스테이터스 ( 1 결제대기 2 결제완료 3 결제예약 취소 4 결제 실패 )
	private String pTitle;  			// 조인 시 필요한 프로젝트명
	private String userNickname;		// 조인 시 필요한 유저 닉네임
	private String artistNickname;		// 조인 시 필요한 아티스트 닉네임
	private int resRwdPriceSum; // 리워드 가격 합한값
	private Date resFundDate; // 펀드 결제일
	private String prjCategoryName; // 프로젝트 카테고리 이름
	private int dDay; // 프로젝트 남은 일수
	private int resRefPst; // 참조하는 프로젝트 스테이터스
	private int total;		// 예약 번호당 총 결제 금액 
	
	public Reserve() {
	}
	
	public Reserve(int resNo, String bKey) {
		super();
		this.resNo = resNo;
		this.bKey = bKey;
	}

	public Reserve(int resNo, String bKey, int addi, Date resDate, String resName, String resContact, String resAddress,
			String resRequest, int resUser, int resRefPno, int resStatusNo, String pTitle, String userNickname,
			String artistNickname, int resRwdPriceSum, Date resFundDate, String prjCategoryName, int dDay,
			int resRefPst, int total) {
		super();
		this.resNo = resNo;
		this.bKey = bKey;
		this.addi = addi;
		this.resDate = resDate;
		this.resName = resName;
		this.resContact = resContact;
		this.resAddress = resAddress;
		this.resRequest = resRequest;
		this.resUser = resUser;
		this.resRefPno = resRefPno;
		this.resStatusNo = resStatusNo;
		this.pTitle = pTitle;
		this.userNickname = userNickname;
		this.artistNickname = artistNickname;
		this.resRwdPriceSum = resRwdPriceSum;
		this.resFundDate = resFundDate;
		this.prjCategoryName = prjCategoryName;
		this.dDay = dDay;
		this.resRefPst = resRefPst;
		this.total = total;
	}

	public int getResNo() {
		return resNo;
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

	public String getResContact() {
		return resContact;
	}

	public void setResContact(String resContact) {
		this.resContact = resContact;
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

	public String getArtistNickname() {
		return artistNickname;
	}

	public void setArtistNickname(String artistNickname) {
		this.artistNickname = artistNickname;
	}

	public int getResRwdPriceSum() {
		return resRwdPriceSum;
	}

	public void setResRwdPriceSum(int resRwdPriceSum) {
		this.resRwdPriceSum = resRwdPriceSum;
	}

	public Date getResFundDate() {
		return resFundDate;
	}

	public void setResFundDate(Date resFundDate) {
		this.resFundDate = resFundDate;
	}

	public String getPrjCategoryName() {
		return prjCategoryName;
	}

	public void setPrjCategoryName(String prjCategoryName) {
		this.prjCategoryName = prjCategoryName;
	}

	public int getdDay() {
		return dDay;
	}

	public void setdDay(int dDay) {
		this.dDay = dDay;
	}

	public int getResRefPst() {
		return resRefPst;
	}

	public void setResRefPst(int resRefPst) {
		this.resRefPst = resRefPst;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Reserve [resNo=" + resNo + ", bKey=" + bKey + ", addi=" + addi + ", resDate=" + resDate + ", resName="
				+ resName + ", resContact=" + resContact + ", resAddress=" + resAddress + ", resRequest=" + resRequest
				+ ", resUser=" + resUser + ", resRefPno=" + resRefPno + ", resStatusNo=" + resStatusNo + ", pTitle="
				+ pTitle + ", userNickname=" + userNickname + ", artistNickname=" + artistNickname + ", resRwdPriceSum="
				+ resRwdPriceSum + ", resFundDate=" + resFundDate + ", prjCategoryName=" + prjCategoryName + ", dDay="
				+ dDay + ", resRefPst=" + resRefPst + ", total=" + total + "]";
	}

	
}