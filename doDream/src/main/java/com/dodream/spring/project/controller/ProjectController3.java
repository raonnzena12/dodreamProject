package com.dodream.spring.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController3 {
///황선희
	
	// 카테고리 전체 출력 임시 매핑
	@RequestMapping("category.dr")
	public String fundListView() {
		return "common/fundList";
	}
	
	// 펀딩 결제창 확인용 임시 매핑
	// 지우지 말아주세요 (HSH)
	@RequestMapping("temp.dr")
	public String tmp() {
		return "project/fundingInfo";
	}
	
	// 펀딩 결제 성공 확인용 임시 매핑
	@RequestMapping("temp2.dr")
	public String tmp2() {
		return "project/fundingComplete";
	}

	// 펀딩 현황 확인용 임시 매핑
	@RequestMapping("temp3.dr")
	public String tmp3() {
		return "project/fundingStatus";
	}
}
