package com.dodream.spring.customerCenter.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.customerCenter.model.service.faqService;
 
@Controller
public class faqController {

	@Autowired
	private faqService faqService;
	/*
	@RequestMapping("insertFundForm.dr")
	public String home() {
		return "fund/insertFundForm";
	}
	
	// ���뵫 寃곗젣李� �솗�씤�슜 �엫�떆 留ㅽ븨
	// 吏��슦吏� 留먯븘二쇱꽭�슂 (HSH)
	*/
	
	@RequestMapping("faq.dr")
	public String noticeList() {
		return "customerCenter/faq";
	}
}
