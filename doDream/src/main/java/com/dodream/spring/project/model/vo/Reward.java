package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class Reward {
	
	private int rNo; //리워드 번호
	private int rPrice; //리워드 금액
	private String rName; // 리워드 이름
	private String rExplain; //리워드 설명
	private int rLimit; //리워드 제한 수량
	private String rShipCDT; //배송 조건
	private Date rShipDate;// 배송 예정일
	private String rOptionAdd;// 옵션추가작성
	private int rRefPno;//참조 프로젝트 번호
	private int rOptionNo;// 옵션 번호
	private int rAmount;// 리워드 재고 수량
	private int userAmount; // 유저가 주문한 리워드 갯수
	private int rSum;// 결제된 리워드 개수;
	
	public Reward() {

	}

	public Reward(int rNo, int rPrice, String rName, String rExplain, int rLimit, String rShipCDT, Date rShipDate,
			String rOptionAdd, int rRefPno, int rOptionNo, int rAmount, int userAmount, int rSum) {
		super();
		this.rNo = rNo;
		this.rPrice = rPrice;
		this.rName = rName;
		this.rExplain = rExplain;
		this.rLimit = rLimit;
		this.rShipCDT = rShipCDT;
		this.rShipDate = rShipDate;
		this.rOptionAdd = rOptionAdd;
		this.rRefPno = rRefPno;
		this.rOptionNo = rOptionNo;
		this.rAmount = rAmount;
		this.userAmount = userAmount;
		this.rSum = rSum;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public int getrPrice() {
		return rPrice;
	}

	public void setrPrice(int rPrice) {
		this.rPrice = rPrice;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrExplain() {
		return rExplain;
	}

	public void setrExplain(String rExplain) {
		this.rExplain = rExplain;
	}

	public int getrLimit() {
		return rLimit;
	}

	public void setrLimit(int rLimit) {
		this.rLimit = rLimit;
	}

	public String getrShipCDT() {
		return rShipCDT;
	}

	public void setrShipCDT(String rShipCDT) {
		this.rShipCDT = rShipCDT;
	}

	public Date getrShipDate() {
		return rShipDate;
	}

	public void setrShipDate(Date rShipDate) {
		this.rShipDate = rShipDate;
	}

	public String getrOptionAdd() {
		return rOptionAdd;
	}

	public void setrOptionAdd(String rOptionAdd) {
		this.rOptionAdd = rOptionAdd;
	}

	public int getrRefPno() {
		return rRefPno;
	}

	public void setrRefPno(int rRefPno) {
		this.rRefPno = rRefPno;
	}

	public int getrOptionNo() {
		return rOptionNo;
	}

	public void setrOptionNo(int rOptionNo) {
		this.rOptionNo = rOptionNo;
	}

	public int getrAmount() {
		return rAmount;
	}

	public void setrAmount(int rAmount) {
		this.rAmount = rAmount;
	}

	public int getUserAmount() {
		return userAmount;
	}

	public void setUserAmount(int userAmount) {
		this.userAmount = userAmount;
	}

	public int getrSum() {
		return rSum;
	}

	public void setrSum(int rSum) {
		this.rSum = rSum;
	}

	@Override
	public String toString() {
		return "Reward [rNo=" + rNo + ", rPrice=" + rPrice + ", rName=" + rName + ", rExplain=" + rExplain + ", rLimit="
				+ rLimit + ", rShipCDT=" + rShipCDT + ", rShipDate=" + rShipDate + ", rOptionAdd=" + rOptionAdd
				+ ", rRefPno=" + rRefPno + ", rOptionNo=" + rOptionNo + ", rAmount=" + rAmount + ", userAmount="
				+ userAmount + ", rSum=" + rSum + "]";
	}

	
}
