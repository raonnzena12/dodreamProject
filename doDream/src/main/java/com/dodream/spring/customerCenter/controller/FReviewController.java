package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.customerCenter.model.service.FReviewService;
import com.dodream.spring.customerCenter.model.vo.Review;

@Controller
public class FReviewController {
	
	@Autowired
	private FReviewService frService;

	@RequestMapping("fReview.dr")
	public ModelAndView ReviewList(ModelAndView mv, Integer page, String cate) {
		
		String category = (cate == null) ? "total" : cate; // 합계
		int currentPage = (page == null) ? 1 : page; // 페이지 번호 확인 삼항 연산자 
		// page이라는 매개변수 값이 null과 경우 1을 대입하며,
		
		// 필요한 정보 : 사진, 카테고리, 제목, 내용, 페이징
		
		// 페이지 번호 확인 삼항 연산자 
		
		// DB 가기 전 체크
		System.out.println("DB가기 전 내용");
		
		ArrayList<Review> revList = frService.selectfrevList(category, currentPage);
		
		// DB 자료 리턴값 확인
		System.out.println("컨트롤 자료");
		System.out.println(revList);
		
		if (revList != null) {
			mv.addObject("revList", revList)
			  .addObject("pi", Pagination.getPageInfo())
			  .setViewName("customerCenter/fReview");
		} else {
			mv.addObject("msg", "프로젝트 후기 조회 실패")
			  .setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("fReviewDetail.dr")
	public ModelAndView fReviewDetail(int revNo, ModelAndView mv, Integer page) {
		int currentPage = page == null ? 1 : page;

		Review review = frService.selectReview(revNo);

		if (review != null) {
			mv.addObject("review", review).addObject("currentPage", currentPage).setViewName("customerCenter/fReviewDetail");
		} else {
			mv.addObject("msg", "프로젝트 후기 상세조회 실패").setViewName("common/errorPage");
		}

		return mv;
	}	
	
}
