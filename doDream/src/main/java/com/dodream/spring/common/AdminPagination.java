package com.dodream.spring.common;

import com.dodream.spring.common.model.vo.PageInfo;

public class AdminPagination { // 싱글톤 패턴 적용
	
	// 페이지 정보를 담아줄 PageInfo 참조변수 선언
	private static PageInfo pi = null;

	public static PageInfo getPageInfo() {
		return pi;
	}
	
	// PageInfo 객체를 리턴하는 static 메소드 추가
	public static PageInfo getPageInfo(int currentPage, int listCount) {
		
		
		// currentPage와 listCount가 넘어온 상태이기 때문에 
		// 페이징 처리에 필요한 나머지 변수만 선언함
		
		int limit = 20; 				// 한 페이지에 보여질 게시글 갯수
		int pagingBarSize = 5;		// 한 페이지에서 보여질 페이징 수 
		
		int maxPage;				// 전체 페이징 수 중 가장 마지막 페이지
		int startPage;				// 현재 페이지에서 보여질 페이징 버튼의 시작 페이지
		int endPage;				// 현재 페이지에서 보여될 페이징 버튼의 끝 페이지
		
		
		// * maxPage - 총 페이지수 
		// 게시글의 개수가 100개일 경우 필요 페이지 수 : 10 페이지
		// 게시글의 개수가 101개일 경우 필요 페이지 수 : 11 페이지
		// 전체 게시글 수 / 한 페이지에 보여질 개수 결과를 올림 처리함.
		maxPage = (int)Math.ceil(((double)listCount / limit));
		
		// * startPage - 현재 페이지에 보여질 시작 페이지 수 
		//   아래쪽에 페이지 수가 10개씩 보여지게 할 경우
		//   1, 11, 21, 31, .....
		startPage = (currentPage-1)/pagingBarSize * pagingBarSize + 1;
		
		// * endPage - 현재 페이지에서 보여질 마지막 페이지 수
		//   아래쪽에 페이지 수가 10개씩 보여지게 할 경우
		//   10, 20, 30, 40, .....
		endPage = startPage + pagingBarSize - 1;
		
		// 하지만 마지막 페이지 수가 총 페이지 수보다 클 경우
		// maxPage가 13페이지고 endPage가 20페이지일 경우
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		if(pi == null) {
			pi = new PageInfo(currentPage, listCount, pagingBarSize, maxPage, startPage, endPage, limit);
		}else {
			pi.setCurrentPage(currentPage);
			pi.setListCount(listCount);
			pi.setPagingBarSize(pagingBarSize);
			pi.setMaxPage(maxPage);
			pi.setStartPage(startPage);
			pi.setEndPage(endPage);
			pi.setLimit(limit);
		}
		
		return pi;
	}
}