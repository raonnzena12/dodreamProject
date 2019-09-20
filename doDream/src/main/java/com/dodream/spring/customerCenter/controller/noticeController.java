package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.noticeService;
  
@Controller
public class noticeController {

	@Autowired
	private noticeService nService;

	@RequestMapping("cCenter.dr")
	public String tmp() {
		return "customerCenter/notice";
	}
	@RequestMapping("notice.dr")
	public String noticeList() {
		return "customerCenter/notice";
	}
}
