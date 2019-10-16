package com.dodream.spring.admin.controller.faq;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.customerCenter.model.vo.Faq;

@Controller
public class AdminFaqController {

	@Autowired
	private AdminService aService;
	
	// 공지사항 목록 
	@RequestMapping("adminFaqList.dr") 
	public ModelAndView faqViewList(ModelAndView mv) {
		
		ArrayList<Faq> list = aService.selectFaqList();
		  
		if(list != null) {
			mv.addObject("list",list).setViewName("admin/faq/faqViewList");
		} else {
			mv.addObject("msg","공지사항이 존재하지  않습니다.").setViewName("admin/faq/faqViewList");
		}
		
		return mv;
	}
	
	// 공지사항 상세 조회
	@RequestMapping("fDetail.dr")
	public ModelAndView detailFaq(ModelAndView mv, int fNo) {
		
		Faq faq = aService.selectFaq(fNo);
		
		if(faq != null) {
			mv.addObject("faq",faq).setViewName("admin/faq/detailFaq");
		} else {
			mv.addObject("msg","공지사항 상세조회 실패").setViewName("admin/faq/detailFaq");
		}
		return mv;
	}
	
	// 공지사항 수정으로 이동
	@RequestMapping("goUpdateFaq.dr")
	public ModelAndView goUpdateFaq(ModelAndView mv, int fNo) {
		
		Faq faq = aService.selectFaq(fNo);

		System.out.println(faq);
		if(faq != null) {
			mv.addObject("faq",faq).setViewName("admin/faq/updateFaq");
		} else {
			mv.addObject("msg","공지사항 수정 실패").setViewName("admin/faq/updateFaq");
		}
		return mv;
	}
	
	
	// 공지사항 삭제
	@RequestMapping("removeFaq.dr")
	public ModelAndView removeFaq(ModelAndView mv, int fNo) {
		
		int result = aService.removeFaq(fNo);

		if(result > 0) {
			mv.setViewName("redirect:adminFaqList.dr");
		} else {
			mv.addObject("msg", "공지사항을 삭제할 수 없습니다.").setViewName("redirect:adminFaqList.dr");
		}
		
		return mv;
	}
	
	// 공지사항 이동하기
	@RequestMapping("goWriteFaq")
	public ModelAndView goWriteFaq(ModelAndView mv) {
		mv.setViewName("admin/faq/writeFaq");
		return mv;
	}
	
}
