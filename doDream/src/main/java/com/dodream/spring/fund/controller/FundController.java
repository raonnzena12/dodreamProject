package com.dodream.spring.fund.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.fund.model.service.FundService;

@Controller
public class FundController {

	@Autowired
	private FundService fService;

	@RequestMapping("insertFundForm.dr")
	public String home() {
		return "fund/insertFundForm";
	}
	
	// 펀딩 결제창 확인용 임시 매핑
	// 지우지 말아주세요 (HSH)
	@RequestMapping("temp.dr")
	public String tmp() {
		return "charge/payingInfo";
	}
}
