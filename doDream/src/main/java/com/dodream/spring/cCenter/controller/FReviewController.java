package com.dodream.spring.cCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.cCenter.model.service.faqService;
 
@Controller
public class FReviewController {

	/*
	 * @Autowired private FReviewService FReviewService;
	 */
	/*
	@RequestMapping("insertFundForm.dr")
	public String home() {
		return "fund/insertFundForm";
	}
	*/
	@RequestMapping("FundingReview.dr")
	public String noticeList() {
		return "customerCenter/FundingReview";
	}
	
	
}
