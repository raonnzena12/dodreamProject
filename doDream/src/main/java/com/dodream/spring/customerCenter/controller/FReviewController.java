package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.customerCenter.model.service.FReviewService;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.revKategorie;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Project;

@Controller
public class FReviewController {
   
   @Autowired 
   private FReviewService frService;
     
   // 후기 목록 불러오는 코드 필요 
   
   @RequestMapping("fReview.dr")
	public String ReviewList(String cate, Integer page, HttpServletRequest request, Model model) {
	// 프로젝트 후기 / 필요 변수 : 조회수, 후기 이미지, 제목, 내용
	   int currentPage = ( page == null ) ? 1 : page; // 페이지 체크 
	   int userNo = 0;
	   String category = ( cate == null || cate.equals("") ) ? "total" : cate; // 후기 카테고리 
		
	   revKategorie kategorie = new revKategorie(userNo, category);
	   // kategorie는 카테고리 관련 vo 
	   ArrayList<Review> revList = frService.selectfrevList(kategorie, currentPage);
	   
	   model.addAttribute("revList", revList);
	   model.addAttribute("pi", Pagination.getPageInfo());
	   model.addAttribute("cate", category);
		return "customerCenter/fReview";
	}
   
   // 후기 리스트를 조회하고 page를 증가에 필요한 코드 필요
   @ResponseBody
   @RequestMapping("revListByAjax.dr")
	public ArrayList<Review> revListByAjax(String cate, Integer page, HttpServletRequest request) {
		int currentPage = ( page == null ) ? 1 : page;
		int userNo = 0;
		String category = ( cate == null || cate.equals("") ) ? "total" : cate;
		
		revKategorie kategorie = new revKategorie(userNo, category);
		ArrayList<Review> revList = frService.selectfrevList(kategorie, currentPage);
		
		return revList;
	}
   
   // 프로텍트 후기 전체 개수 출력
   @ResponseBody
   @RequestMapping("revProjectCount.dr")
   public int projectCount() {
	   
	   int result = frService.projectCount();
	   System.out.println("result : " +  result);
	   return result;
   }
 

   // 후기 상세 페이지 불러오는 코드
   /** 후기 상세페이지 
	 * @param revNo
	 * @param mv
	 * @param page
	 * @return
	 */
	@RequestMapping("fReviewDetail.dr")
	public ModelAndView fReviewDetail( Review review, int revNo, ModelAndView mv, Integer page) {

		if(review.getRevContent()!=null)review.setRevContent(review.getRevContent().replace("\n", "<br>"));
		
		int currentPage = page == null ? 1 : page;

		Review revdetail = frService.selectReview(revNo);
		
		if (revdetail != null) {
			System.out.println("성공");
		 mv.addObject("revdetail", revdetail)
		   .addObject("currentPage", currentPage)
		   .setViewName("customerCenter/fReviewDetail");
		} else {
		     System.out.println("실패");
		 mv.addObject("msg", "프로젝트 후기 상세조회 실패").setViewName("common/errorPage");
		}
		return mv;
   }   
}