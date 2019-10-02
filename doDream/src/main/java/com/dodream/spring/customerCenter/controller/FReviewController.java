package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.customerCenter.model.service.FReviewService;
import com.dodream.spring.customerCenter.model.vo.Review;

@Controller
public class FReviewController {

	private FReviewService frService;

	/*
	// 프로젝트 후기 / 필요 변수 : 조회수, 후기 이미지, 제목, 내용
	@RequestMapping("fReview.dr")
	public ArrayList<Review> frListByAjax(Integer page, String cate) {
		String category = (cate == null) ? "total" : cate; // 합계
		int currentPage = (page == null) ? 1 : page; // 페이지 번호 확인 삼항 연산자 
		// page이라는 매개변수 값이 null과 경우 1을 대입하며,

		ArrayList<Review> revList = frService.selectfrevList(category, currentPage);

		return revList;
	}
	*/
	 
	// 프로젝트 상세 / 제목, 
	
	@RequestMapping("fReview.dr")
	public String tmp() {
		return "customerCenter/fReviewDetail";
	}
	
	
}
