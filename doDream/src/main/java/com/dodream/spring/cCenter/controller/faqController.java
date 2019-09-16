package com.dodream.spring.cCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.cCenter.model.service.faqService;

@Controller
public class faqController {

	@Autowired
	private faqService faqService;
	/*
	@RequestMapping("insertFundForm.dr")
	public String home() {
		return "fund/insertFundForm";
	}
	
	// 펀딩 결제창 확인용 임시 매핑
	// 지우지 말아주세요 (HSH)
	*/
} 
