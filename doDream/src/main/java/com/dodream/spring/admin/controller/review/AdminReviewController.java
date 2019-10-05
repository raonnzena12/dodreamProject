package com.dodream.spring.admin.controller.review;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;

@Controller
public class AdminReviewController {

	@Autowired
	private AdminService aService;
	
	// 리뷰 목록 
	@RequestMapping("adminReviewList.dr")
	public ModelAndView ReviewViewList(ModelAndView mv) {
		
		ArrayList<Review> list = aService.selectReviewList();
		
		if(list != null) {
			mv.addObject("list", list).setViewName("admin/review/reviewViewList");
		} else {
			mv.addObject("msg", "리뷰 목록이 존재하지 않습니다.").setViewName("admin/review/reviewViewList");
		}

		return mv;
	}
	
	// 리뷰 작성
	@RequestMapping("goWriteReview.dr")
	public ModelAndView goWriteReview(ModelAndView mv) {
		mv.setViewName("admin/review/writeReview");
		return mv;
	}
	
	// 상세 보기 
	@RequestMapping("rDetail.dr")
	public ModelAndView detailReview(ModelAndView mv, int revNo) {
		
		Review review = aService.selectReview(revNo);
		 
		if(review != null) {
			mv.addObject("review",review).setViewName("admin/review/detailReview");
		} else {
			mv.addObject("msg","공지사항 상세조회 실패").setViewName("admin/review/detailReview");
		}
		
		return mv;
	}
	
	// 리뷰 수정
	@RequestMapping("goUpdateReview.dr")
	public ModelAndView goUpdateReview(ModelAndView mv, int revNo) {
		
		Review review = aService.selectReview(revNo);

		if(review != null) {
			mv.addObject("review",review).setViewName("admin/review/updateReview");
		} else {
			mv.addObject("msg","공지사항 수정 실패").setViewName("admin/review/updateReview");
		}
		return mv;
	}
	
	
	
	
}
