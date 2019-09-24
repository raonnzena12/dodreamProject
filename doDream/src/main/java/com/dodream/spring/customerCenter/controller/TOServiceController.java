package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.noticeService;
 
@Controller
public class TOServiceController {
 
	@Autowired
	private noticeService nService;

	/*
	@RequestMapping("notice.dr")
	public ModelAndView noticeList(ModelAndView mv) {

	 	ArrayList<notice> list = nService.selectList();

		if (list != null) {
			mv.addObject("list", list);
			mv.setViewName("customerCenter/notice");
		} else {
			mv.addObject("msg", "공지사항 목록 조회 실패");
			mv.setViewName("common/errorPage");
		}

		return mv;
	}*/


	@RequestMapping("T_O_Service.dr")
	public String tmp() {
		return "customerCenter/TermsOfService";
	}
}
