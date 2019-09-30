package com.dodream.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dodream.spring.member.model.vo.Member;

@Controller
public class HomeController {
	
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
	
}




