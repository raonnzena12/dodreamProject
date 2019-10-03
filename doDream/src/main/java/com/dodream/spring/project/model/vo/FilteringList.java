package com.dodream.spring.project.model.vo;

public class FilteringList {
	private int userNo;
	private String category; // 카테고리
	// total 전체 | music 음악 | movie 영화 | play 연극 | art 미술 | etc 기타
	private String order;
	// popluar 인기순(클릭순) | amount 최고금액순
	// closing 마감임박순 | recent 최신순 | support 최다후원순
	private String keyword;
	// 검색 키워드
	private String endYn;
	// ALL 전체 | Y 종료된 펀딩 | N 진행중인 펀딩
	
	public FilteringList() {}

	public FilteringList(int userNo, String category, String order, String keyword, String endYn) {
		super();
		this.userNo = userNo;
		this.category = category;
		this.order = order;
		this.keyword = keyword;
		this.endYn = endYn;
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

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getEndYn() {
		return endYn;
	}

	public void setEndYn(String endYn) {
		this.endYn = endYn;
	}

	@Override
	public String toString() {
		return "FilteringList [userNo=" + userNo + ", category=" + category + ", order=" + order + ", keyword="
				+ keyword + ", endYn=" + endYn + "]";
	}
}
