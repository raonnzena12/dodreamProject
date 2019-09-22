package com.dodream.spring.admin.controller.project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminFundingController {

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
	
}
