package com.dodream.spring.admin.controller.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;

@Controller
public class AdminReviewController {

	@Autowired
	private AdminService aService;
	
	// 리뷰 목록 
	@RequestMapping("adminReviewList.dr")
	public ModelAndView ReviewViewList(ModelAndView mv) {
		mv.setViewName("admin/review/reviewViewList");
		return mv;
	}
	
	// 리뷰 작성
	@RequestMapping("goWriteReview.dr")
	public ModelAndView goWriteReview(ModelAndView mv) {
		mv.setViewName("admin/review/writeReview");
		return mv;
	}
	
	
}
