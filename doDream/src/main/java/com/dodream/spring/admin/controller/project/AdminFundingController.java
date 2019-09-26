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
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList1();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/fundingViewList1");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/fundingViewList1");
		}
		return mv;
	}
	
	// 심사 완료된 목록 보여주기
	@RequestMapping("adminFlist2.dr")
	public ModelAndView FundingListView2(ModelAndView mv, Integer page) {
		
		// 프로젝트 목록 조회 
		ArrayList<Project> list = aService.selectProjectList2();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/fundingViewList2");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/fundingViewList2");
		}
		return mv;
	}
	
	// 오픈 중 목록 보여주기
	@RequestMapping("adminFlist3.dr")
	public ModelAndView FundingListView3(ModelAndView mv, Integer page) {
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList3();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/fundingViewList3");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/fundingViewList3");
		}
		return mv;
	}
	
	// 마감된 목록 보여주기
	@RequestMapping("adminFlist4.dr")
	public ModelAndView FundingListView4(ModelAndView mv, Integer page) {
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList4();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/fundingViewList4");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/fundingViewList4");
		}
		return mv;
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
