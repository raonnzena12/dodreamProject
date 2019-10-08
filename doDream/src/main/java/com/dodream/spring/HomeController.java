package com.dodream.spring;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Project;

@Controller
public class HomeController {
	
	@Autowired
	private ProjectService pService;
	
	@RequestMapping(value = "home.dr", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}
	@RequestMapping(value = "adminHome.dr", method = RequestMethod.GET)
	public String temp(HttpServletRequest request) {
		
		Object user = request.getSession().getAttribute("loginUser");
		
		if(user != null && ((Member)user).getUserAdminYn().equals("Y")) {
			return "admin/adminHome";
		} else {
			return "redirect:home.dr";
		}
		
	}
	
	@RequestMapping("main.dr")
	public String main(HttpServletRequest request, Model model) {
		int userNo = 0;
		Object loginUser = request.getSession().getAttribute("loginUser");
		if ( loginUser != null ) {
			userNo = ((Member)loginUser).getUserNo();
		}
		
		ArrayList<Project> allList = pService.selectMainList(userNo);
		model.addAttribute("allList", allList);
		return "common/main";
	}
}




