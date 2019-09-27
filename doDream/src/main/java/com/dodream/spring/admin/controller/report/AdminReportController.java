package com.dodream.spring.admin.controller.report;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.report.model.vo.Report;

@Controller
public class AdminReportController {

	@Autowired
	private AdminService aService;
	
	// 신고 개수 관련 메소드
	@ResponseBody
	@RequestMapping("adminCountReport")
	public int countReport() {
		return aService.countReport();
	}
	
	// 신고 목록 메소드
	@RequestMapping("adminReplist.dr")
	public ModelAndView reportListView(ModelAndView mv) {
		
		ArrayList<Report> list = aService.selectReportList();
		
		if(list != null) {
			mv.addObject("list", list).setViewName("admin/report/reportViewList");
		} else {
			mv.addObject("msg", "신고 접수 된 프로젝트가 존재하지  않습니다.").setViewName("admin/report/reportViewList");
		}
		
		return mv;
	}
	
}