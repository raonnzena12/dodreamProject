package com.dodream.spring.reserve.model.vo;

public class History {
	private int rsvNo; // 참조하는 예약번호
	private int rwdNo; // 참조하는 리워드 번호
	private int rwdAmount; // 리워드 갯수
	
	public History() {}

	public History(int rsvNo, int rwdNo, int rwdAmount) {
		super();
		this.rsvNo = rsvNo;
		this.rwdNo = rwdNo;
		this.rwdAmount = rwdAmount;
	}

	public int getRsvNo() {
		return rsvNo;
	}

	public void setRsvNo(int rsvNo) {
		this.rsvNo = rsvNo;
	}

	public int getRwdNo() {
		return rwdNo;
	}

	public void setRwdNo(int rwdNo) {
		this.rwdNo = rwdNo;
	}

	public int getRwdAmount() {
		return rwdAmount;
	}

	public void setRwdAmount(int rwdAmount) {
		this.rwdAmount = rwdAmount;
	}

	@Override
	public String toString() {
		return "History [rsvNo=" + rsvNo + ", rwdNo=" + rwdNo + ", rwdAmount=" + rwdAmount + "]";
	}
}
