package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.customerCenter.model.service.NoticeService;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.centerpageInfo;
import com.dodream.spring.customerCenter.model.vo.revKategorie;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
   
	/** 공지사항 목록 조회
	 * @param mv 
	 * @return 
	 */
	@RequestMapping("cCenter.dr")
	public ModelAndView noticeList(ModelAndView mv, Integer page ) {

		int currentPage = ( page == null ) ? 1 : page; // 페이지 체크 
		
		ArrayList<Notice> nList = noticeService.selectList(currentPage);
		// 조회 성공시
		if (nList != null) {
			mv.addObject("nList", nList);
			mv.addObject("pi", centerpageInfo.getcenterpageInfo());
			mv.setViewName("customerCenter/notice");
		} 
		// 조회 실패시 
		else {
			mv.addObject("msg", "공지사항 목록 조회 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	// 후기 리스트를 조회하고 page를 증가에 필요한 코드 필요
   @ResponseBody
   @RequestMapping("noticeListByAjax.dr")
	public ArrayList<Notice> noticeListByAjax(Integer page, HttpServletRequest request) {
		int currentPage = ( page == null ) ? 1 : page;
	
		ArrayList<Notice> nList = noticeService.selectList(currentPage);
		
		return nList;
	}
}
