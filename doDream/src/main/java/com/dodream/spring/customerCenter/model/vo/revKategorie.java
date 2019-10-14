package com.dodream.spring.customerCenter.model.vo;

public class revKategorie{
	private int userNo;
	private String category; // 카테고리
	// total 전체 | music 음악 | movie 영화 | play 연극 | art 미술 | etc 기타
	
	public revKategorie() {
		// TODO Auto-generated constructor stub
	}
	public revKategorie(int userNo, String category) {
		super();
		this.userNo = userNo;
		this.category = category;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}  
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "revKategorie [userNo=" + userNo + ", category=" + category + "]";
	}
}
