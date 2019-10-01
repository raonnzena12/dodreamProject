package com.dodream.spring.admin.controller.notice;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.customerCenter.model.vo.Notice;

@Controller
public class AdminNoticeController {

	@Autowired
	private AdminService aService;
	
	// 공지사항 목록
	@RequestMapping("adminNoticeList.dr")
	public ModelAndView noticeViewList(ModelAndView mv) {
		
		ArrayList<Notice> list = aService.selectNoticeList();
		
		if(list != null) {
			mv.addObject("list",list).setViewName("admin/notice/noticeViewList");
		} else {
			mv.addObject("msg","공지사항이 존재하지  않습니다.").setViewName("admin/notice/noticeViewList");
		}
		
		return mv;
	}
	
	// 공지사항 수정으로 이동
	@RequestMapping("goUpdateNotice.dr")
	public ModelAndView goUpdateNotice(ModelAndView mv) {
		mv.setViewName("admin/notice/updateNotice");
		return mv;
	}
	
	// 공지사항 수정 
	
	
	
	
	
	
	// 공지사항 삭제
	@RequestMapping("removeNotice.dr")
	public ModelAndView removeNotice(ModelAndView mv, int nNo) {
		
		int result = aService.removeNotice(nNo);

		if(result > 0) {
			mv.setViewName("redirect:adminNoticeList.dr");
		} else {
			mv.addObject("msg", "공지사항을 삭제할 수 없습니다.").setViewName("redirect:adminNoticeList.dr");
		}
		
		return mv;
	}
	
	// 공지사항 이동하기
	@RequestMapping("goWriteNotice")
	public ModelAndView goWriteNotice(ModelAndView mv) {
		mv.setViewName("admin/notice/writeNotice");
		return mv;
	}
	
}
