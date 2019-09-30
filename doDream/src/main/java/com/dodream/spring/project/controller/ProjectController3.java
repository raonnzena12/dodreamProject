package com.dodream.spring.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.vo.HistoryList;
import com.dodream.spring.reserve.model.vo.Reserve;
import com.dodream.spring.reserve.model.vo.UserCard;

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
		model.addAttribute("pList", pList);
		model.addAttribute("pi", Pagination.getPageInfo());
		return "common/fundList";
	}
	
	// 펀딩 결제창 확인용 임시 매핑
	@RequestMapping("letsFunding.dr")
	public String tmp(Model model) {
		int pNo = 54; // projectNumber
		String rewardStr = "4/6/7/";
		int addtionalCost = 10000;
		
		Project prj = pService.selectProject(pNo);
		ArrayList<Reward> rList = pService.selectRewardList(rewardStr);
		
		model.addAttribute("rList", rList);
		model.addAttribute("additionalCost",addtionalCost);
		model.addAttribute("prj", prj);
		
		return "project/fundingInfo";
	}
	
	// 펀딩 결제 성공 확인용 임시 매핑
	@RequestMapping("thankYou.dr")
	public String tmp2(Reserve reserve, HistoryList hList, UserCard uCard) {
		
		System.out.println(reserve);
		System.out.println(hList);
		System.out.println(uCard);
		
		
		return "project/fundingComplete";
	}

	@ResponseBody
	@RequestMapping("ptemp4.dr")
	public String tmp4(String check) {
		System.out.println(check);
		return check;
	}
	
	@ResponseBody
	@RequestMapping("loadListByAjax.dr")
	public ArrayList<Project> loadListByAjax(Integer page, String cate) {
		String category = ( cate == null ) ? "total" : cate;
		int currentPage = ( page == null ) ? 1 : page;
		
		ArrayList<Project> pList = pService.selectPrjList(category, currentPage);
		
		return pList;
	}
	
	//REST TEST
	@ResponseBody
	@RequestMapping(value="/{testStr}/{num}", method=RequestMethod.GET)
	public HashMap<String, Object> restTest(@PathVariable String testStr, @PathVariable int num) {
		
		HashMap<String, Object> map = new HashMap<>();
		if ( num == 1 ) {
			map.put("1", testStr);
		} else {
			map.put("2", testStr+testStr);
		}
		
		return map;
	}
}
