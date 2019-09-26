package com.dodream.spring.reserve.model.vo;

import java.sql.Date;

public class Reserve {

	private int rNo;
	private String bKey;
	private int addi;
	private Date rDate;
	private String rName;
	private int rContract;
	private String rAddress;
	private String rRequest;
	private int rUser;
	private int rRefPno;
	private int rStatusNo;
	
	public Reserve() {
	}

	public Reserve(int rNo, String bKey, int addi, Date rDate, String rName, int rContract, String rAddress,
			String rRequest, int rUser, int rRefPno, int rStatusNo) {
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

	@Override
	public String toString() {
		return "Reserve [rNo=" + rNo + ", bKey=" + bKey + ", addi=" + addi + ", rDate=" + rDate + ", rName=" + rName
				+ ", rContract=" + rContract + ", rAddress=" + rAddress + ", rRequest=" + rRequest + ", rUser=" + rUser
				+ ", rRefPno=" + rRefPno + ", rStatusNo=" + rStatusNo + "]";
	}

	
	
}
