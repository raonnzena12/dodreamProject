package com.dodream.spring.admin.controller.reserve;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;

@Controller
public class AdminReserveController {

	@Autowired
	private AdminService aService;
	
	@RequestMapping("adminRlist1.dr")
	public ModelAndView paymentListView1(ModelAndView mv) {
		
		return mv;
	}
	
	
}
