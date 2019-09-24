package com.dodream.spring.admin.controller.project;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.common.AdminPagination;
import com.dodream.spring.project.model.vo.Project;

@Controller
public class AdminFundingController {

	@Autowired
	private AdminService aService;
	
	// 심사 대기 중 목록 보여주기
	@RequestMapping("adminFlist1.dr")
	public ModelAndView FundingListView1(ModelAndView mv, Integer page) {
		
		int currentPage = page == null ? 1 : page;
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList(currentPage);
		
		if(list != null) {
			mv.addObject("list", list).
			addObject("pi", AdminPagination.getPageInfo()).
			setViewName("admin/project/fundingViewList1");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/fundingViewList1");
		}
		return mv;
	}
	
	@RequestMapping("adminFlist2.dr")
	public String FundingListView2() {
		return "admin/project/fundingViewList2";
	}
	
	@RequestMapping("adminFlist3.dr")
	public String FundingListView3() {
		return "admin/project/fundingViewList3";
	}
	
	@ResponseBody
	@RequestMapping("adminCountProject1.dr")
	public int countProject1() {
		return aService.countProject1();
	}
	
	@ResponseBody
	@RequestMapping("adminCountProject2.dr")
	public int countProject2() {
		return aService.countProject2();
	} 
	
	@ResponseBody
	@RequestMapping("adminCountProject3.dr")
	public int countProject3() {
		return aService.countProject3();
	}
	
	
	
}
