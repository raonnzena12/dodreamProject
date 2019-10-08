package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.service.FaqService;
import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;
 
@Controller
public class FaqController {

	@Autowired
	private FaqService faqService;
	
	
	/** FAQ 목록 조회 
	 * @param mv
	 * @return
	 */
	@RequestMapping("faq.dr")
	public ModelAndView faqList(ModelAndView mv) {
		
		ArrayList<Faq> fList = faqService.selectList();
		System.out.println(fList);
		if (fList != null) {
			mv.addObject("fList", fList);
			mv.setViewName("customerCenter/faq");
		} else {
			mv.addObject("msg", "FAQ 목록 조회 실패!!!");
			mv.setViewName("common/errorPage");
		}

		return mv;
	} 
	
	
	/** FAQ 검색
	 * @param search
	 * @param model
	 * @return
	 */
	@RequestMapping("nsearch.dr")
	public String noticeSearch(Search search, Model model) {

		System.out.println(search.getSearchCondition());
		System.out.println(search.getSearchValue());
		System.out.println(search.getExistFile());
		// 체크 O : on
		// 체크 X : null

		ArrayList<Faq> searchList = faqService.searchList(search);

		for (Faq f : searchList) {
			System.out.println(f);
		}

		model.addAttribute("fList", searchList);
		model.addAttribute("search", search);
		return "customerCenter/faq";
	}
	

}
