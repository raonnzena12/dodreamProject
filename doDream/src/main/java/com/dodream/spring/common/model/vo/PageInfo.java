package com.dodream.spring.common.model.vo;

public class PageInfo {
	private int currentPage;
	private int listCount;
	private int pagingBarSize;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int limit;
	
	public PageInfo() {
		// TODO Auto-generated constructor stub
	}

	public PageInfo(int currentPage, int listCount, int pagingBarSize, int maxPage, int startPage, int endPage,
			int limit) {
		super();
		this.currentPage = currentPage;
		this.listCount = listCount;
		this.pagingBarSize = pagingBarSize;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.limit = limit;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getPagingBarSize() {
		return pagingBarSize;
	}

	public void setPagingBarSize(int pagingBarSize) {
		this.pagingBarSize = pagingBarSize;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	@Override
	public String toString() {
		return "PageInfo [currentPage=" + currentPage + ", listCount=" + listCount + ", pagingBarSize=" + pagingBarSize
				+ ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage + ", limit=" + limit
				+ "]";
	}
}