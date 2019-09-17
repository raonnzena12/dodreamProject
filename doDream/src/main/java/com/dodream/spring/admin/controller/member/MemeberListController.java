package com.dodream.spring.admin.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemeberListController {

	@RequestMapping(value= "mList.dr", method= RequestMethod.GET)
	public String selectMemberList() {
		return "admin/memberViewList";
	}
	
	
	
}
