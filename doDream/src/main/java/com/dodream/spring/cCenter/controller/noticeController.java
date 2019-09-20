package com.dodream.spring.cCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.cCenter.model.service.noticeService;

@Controller
public class noticeController {

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

	// 펀딩 결제창 확인용 임시 매핑
	// 지우지 말아주세요 (HSH)

	@RequestMapping("cCenter.dr")
	public String tmp() {
		return "customerCenter/notice";
	}
	@RequestMapping("notice.dr")
	public String noticeList() {
		return "customerCenter/notice";
	}
}
