package com.dodream.spring.admin.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminMemberController {

	@RequestMapping(value= "adminMlist.dr", method= RequestMethod.GET)
	public String MemberListView() {
		return "admin/member/memberViewList";
	}
	
	@RequestMapping(value="adminBlist.dr", method= RequestMethod.GET)
	public String BlackListView() {
		return "admin/member/memberBlackList";
	} 
	
	
}
