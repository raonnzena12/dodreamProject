package com.dodream.spring.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.project.model.service.ProjectService;

@Controller
public class ProjectController {
/// 창혁씨

	@Autowired
	private ProjectService pService;

	/**
	 * 메뉴바에서 펀드 등록하기 클릭시 프로젝트 동의 페이지로 이동
	 * @return insertFundAgreement.jsp
	 */
	@RequestMapping("insertFundForm.dr")
	public String home() {
		return "project/insertFundForm";
	}

}
