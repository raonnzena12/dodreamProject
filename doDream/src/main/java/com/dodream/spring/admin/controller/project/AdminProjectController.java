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
public class AdminProjectController {

	@Autowired
	private AdminService aService;
	
	// 심사 대기 중 목록 보여주기
	@RequestMapping("adminPlist1.dr")
	public ModelAndView projectListView1(ModelAndView mv) {
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList1();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/projectViewList1");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/projectViewList1");
		}
		return mv;
	}
	
	// 심사 완료된 목록 보여주기
	@RequestMapping("adminPlist2.dr")
	public ModelAndView projectListView2(ModelAndView mv) {
		
		// 프로젝트 목록 조회 
		ArrayList<Project> list = aService.selectProjectList2();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/projectViewList2");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/projectViewList2");
		}
		return mv;
	}
	
	// 오픈 중 목록 보여주기
	@RequestMapping("adminPlist3.dr")
	public ModelAndView projectListView3(ModelAndView mv) {
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList3();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/projectViewList3");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/projectViewList3");
		}
		return mv;
	}
	
	// 마감된 목록 보여주기
	@RequestMapping("adminPlist4.dr")
	public ModelAndView FundingListView4(ModelAndView mv, Integer page) {
		
		// 프로젝트 목록 조회
		ArrayList<Project> list = aService.selectProjectList4();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/project/projectViewList4");
		} else {
			mv.addObject("msg", "등록된 프로젝트가 없습니다.").
			setViewName("admin/project/projectViewList4");
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
	
	// 카테고리 분포 관련 메소드
	@ResponseBody
	@RequestMapping("countCategory.dr")
	public ArrayList<Integer> countCategory() {
		return aService.countCategory();
	}
	
	
}
