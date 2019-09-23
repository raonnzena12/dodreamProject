package com.dodream.spring.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;

@Controller
public class ProjectController3 {
///황선희
	
	@Autowired
	private ProjectService pService;
	
	// 카테고리 전체 출력 임시 매핑
	@RequestMapping("category.dr")
	public String fundListView(String cate, Integer page, Model model) {
		String category = ( cate == null ) ? "total" : cate;
		int currentPage = ( page == null ) ? 1 : page;
		
		ArrayList<Project> pList = pService.selectPrjList(category, currentPage);
		System.out.println(pList.size());
		model.addAttribute("pList", pList);
		return "common/fundList";
	}
	
	// 펀딩 결제창 확인용 임시 매핑
	// 지우지 말아주세요 (HSH)
	@RequestMapping("temp.dr")
	public String tmp(Model model) {
		int pNo = 54; // projectNumber
		int selectReward1 = 2;
		int selectReward2 = 7;
		int addtionalFunding = 10000;
		
		Project prj = pService.selectProject(pNo);
		System.out.println(prj);
		
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
	
	@ResponseBody
	@RequestMapping("ptemp4.dr")
	public String tmp4(String check) {
		System.out.println(check);
		return check;
	}
}
