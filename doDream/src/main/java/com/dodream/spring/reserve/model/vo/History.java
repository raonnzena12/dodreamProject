package com.dodream.spring.reserve.model.vo;

public class History {
	private int rsvNo; // 참조하는 예약번호
	private int rwdNo; // 참조하는 리워드 번호
	private int rwdAmount; // 리워드 갯수
	private String rwdOption; // 리워드 옵션
	
	public History() {}

	public History(int rsvNo, int rwdNo, int rwdAmount, String rwdOption) {
		super();
		this.rsvNo = rsvNo;
		this.rwdNo = rwdNo;
		this.rwdAmount = rwdAmount;
		this.rwdOption = rwdOption;
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

	public String getRwdOption() {
		return rwdOption;
	}

	public void setRwdOption(String rwdOption) {
		this.rwdOption = rwdOption;
	}

	@Override
	public String toString() {
		return "History [rsvNo=" + rsvNo + ", rwdNo=" + rwdNo + ", rwdAmount=" + rwdAmount + ", rwdOption=" + rwdOption
				+ "]";
	}
}
