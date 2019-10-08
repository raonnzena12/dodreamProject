package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.NoticeService;
 
@Controller
public class TOServiceController {
	
	/** 이용약관 이동
	 * @return
	 */
	@RequestMapping("T_O_Service.dr")
	public String Terms() {
		return "customerCenter/TermsOfService";
	}
}
