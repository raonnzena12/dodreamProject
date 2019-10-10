package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.NoticeService;
import com.dodream.spring.customerCenter.model.vo.Notice;

@Controller
public class NoticeController {

	@Autowired 
	private NoticeService noticeService;
  
	/** 공지사항 목록 조회
	 * @param mv
	 * @return
	 */
	@RequestMapping("cCenter.dr")
	public ModelAndView noticeList(ModelAndView mv) {

		ArrayList<Notice> nList = noticeService.selectList();
		
		// 조회 성공시
		if (nList != null) {
			mv.addObject("nList", nList);
			mv.setViewName("customerCenter/notice");
		} 
		// 조회 실패시 
		else {
			mv.addObject("msg", "공지사항 목록 조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}

}
