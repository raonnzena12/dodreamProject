package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.FaqService;
import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.Search;
import com.dodream.spring.customerCenter.model.vo.centerpageInfo;
 
@Controller
public class FaqController {

	@Autowired
	private FaqService faqService;
	
	 
	/** FAQ 목록 조회     
	 * @param mv  
	 * @return
	 */
	@RequestMapping("faq.dr")
	public ModelAndView faqList(ModelAndView mv, Integer page) {
		int currentPage = ( page == null ) ? 1 : page; // 페이지 체크 
		
		ArrayList<Faq> fList = faqService.selectList(currentPage);

		// 조회 성공시
		if (fList != null) {
			mv.addObject("fList", fList);
			mv.addObject("pi", centerpageInfo.getcenterpageInfo());
			mv.setViewName("customerCenter/faq");
		} 
		// 조회 실패시 
		else {
			mv.addObject("msg", "FAQ 목록 조회 실패!!!");
			mv.setViewName("common/errorPage");
		}

		return mv;
	} 
	
	// 후기 리스트를 조회하고 page를 증가에 필요한 코드 필요
   @ResponseBody
   @RequestMapping("faqListByAjax.dr")
	public ArrayList<Faq> faqListByAjax(Integer page, HttpServletRequest request) {
		int currentPage = ( page == null ) ? 1 : page;
		
		ArrayList<Faq> fList = faqService.selectList(currentPage);
		System.out.println("FAQ AJAX 작동");
		System.out.println(fList);
		return fList;
	}
	
	/** FAQ 검색
	 * @param search
	 * @param model
	 * @return
	 */
	@RequestMapping("nsearch.dr")
	public String noticeSearch(Search search, Model model) {

		ArrayList<Faq> searchList = faqService.searchList(search);

		model.addAttribute("fList", searchList);
		model.addAttribute("search", search);
		return "customerCenter/faq";
	}
	// 프로젝트 후기 전체 개수 출력
   @ResponseBody
   @RequestMapping("fProjectCount.dr")
   public int fProjectCount() {
	   
	   int result = faqService.fProjectCount();
	   System.out.println("result : " +  result);
	   return result;
   }

}
