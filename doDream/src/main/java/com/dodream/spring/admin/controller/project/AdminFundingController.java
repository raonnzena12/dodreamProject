package com.dodream.spring.admin.controller.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.admin.model.service.AdminService;

@Controller
public class AdminFundingController {

	@Autowired
	private AdminService aService;
	
	@RequestMapping(value = "adminFlist1.dr", method = RequestMethod.GET)
	public String FundingListView1() {
		return "admin/project/fundingViewList1";
	}
	
	@RequestMapping(value = "adminFlist2.dr", method = RequestMethod.GET)
	public String FundingListView2() {
		return "admin/project/fundingViewList2";
	}
	
	@RequestMapping(value = "adminFlist3.dr", method = RequestMethod.GET)
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
