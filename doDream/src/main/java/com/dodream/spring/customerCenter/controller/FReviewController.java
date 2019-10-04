package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.FReviewService;
import com.dodream.spring.customerCenter.model.vo.Review;

@Controller
public class FReviewController {

	private FReviewService frService;
 
	// 프로젝트 후기 / 필요 변수 : 조회수, 후기 이미지, 제목, 내용 
	@RequestMapping("fReview.dr") 
	public ArrayList<Review> frListByAjax(Integer page, String cate) { 
		String category = (cate == null) ? "total" : cate; // 합계
		int currentPage = (page == null) ? 1 : page; // 페이지 번호 확인 삼항 연산자 
		// page이라는 매개변수 값이 null과 경우 1을 대입하며,
		System.out.println(category + currentPage);
		ArrayList<Review> revList = frService.selectfrevList(category, currentPage);
		System.out.println(revList);
		System.out.println("데이터 리턴");
		return revList;
	}
	 
	/*
	@RequestMapping("fReview.dr")
	public String tmp() {
		return "customerCenter/fReview";
	}
	*/
	/*
	// 프로젝트 상세
	@RequestMapping("revDetail.dr")
	public ModelAndView revDetail(int revId, ModelAndView mv, Integer page) {
		
		Review review = frService.selectReview(revId);
		
		if()
		
		return "customerCenter/fReviewDetail";
	}
	*/
}
