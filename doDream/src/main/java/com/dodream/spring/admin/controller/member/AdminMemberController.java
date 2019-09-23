package com.dodream.spring.admin.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.admin.model.service.AdminService;


@Controller
public class AdminMemberController {
	
	@Autowired
	private AdminService aService;

	@RequestMapping(value= "adminMlist.dr", method= RequestMethod.GET)
	public String MemberListView() {
		return "admin/member/memberViewList";
	}
	
	@RequestMapping(value="adminBlist.dr", method= RequestMethod.GET)
	public String BlackListView() {
		return "admin/member/memberBlackList";
	} 
	
	@ResponseBody
	@RequestMapping("adminCountNewMember")
	public int countNewMember() {
		return aService.countNewMember();
	}
	
	
}
