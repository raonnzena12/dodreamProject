package com.dodream.spring.customerCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.customerCenter.model.service.faqService;
 
@Controller
public class fReviewController {
 
	/*
	 * @Autowired private FReviewService FReviewService;
	 */
	@RequestMapping("fReview.dr")
	public String noticeList() {
		return "customerCenter/fReview";
	} 
	 
	 
}
