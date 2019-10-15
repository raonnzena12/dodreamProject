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
	   System.out.println(category);
		
	   revKategorie kategorie = new revKategorie(userNo, category);
	   // kategorie는 카테고리 관련 vo 
	   ArrayList<Review> revList = frService.selectfrevList(kategorie, currentPage);
	   System.out.println(revList);
	   
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
		System.out.println("ajax 도착");
		revKategorie kategorie = new revKategorie(userNo, category);
		ArrayList<Review> revList = frService.selectfrevList(kategorie, currentPage);
		System.out.println(revList);
		return revList;
	}
   
   
   // 후기 상세 페이지 불러오는 코드 필요
   
   
   // 이전 코드 확인을 위해 보관
   /*
   @RequestMapping("fReview.dr") 
   public ModelAndView ReviewList(ModelAndView mv, Integer page, String cate) {
   // 프로젝트 후기 / 필요 변수 : 조회수, 후기 이미지, 제목, 내용 
      String category = (cate == null) ? "total" : cate; // 합계
      int currentPage = (page == null) ? 1 : page; // 페이지 번호 확인 삼항 연산자 
      // page이라는 매개변수 값이 null과 경우 1을 대입하며,
      
      // 필요한 정보 : 사진, 카테고리, 제목, 내용, 페이징
      
      // 페이지 번호 확인 삼항 연산자 
      
      // DB 가기 전 체크
      System.out.println("DB가기 전 내용");
      
      ArrayList<Review> revList = frService.selectfrevList(category, currentPage);
      
      // DB 자료 리턴값 확인
      System.out.println("컨트롤 자료");
      System.out.println(revList);
      
      if (revList != null) {
         System.out.println("성공");
         mv.addObject("revList", revList)
           .addObject("pi", Pagination.getPageInfo())
           .setViewName("customerCenter/fReview");
      } else {
         mv.addObject("msg", "프로젝트 후기 조회 실패")
           .setViewName("common/errorPage");
      }
      return mv;

   }
   */

/* ===================================================================================== */   
   
   /** 후기 상세페이지 
 * @param revNo
 * @param mv
 * @param page
 * @return
 */
@RequestMapping("fReviewDetail.dr")
   public ModelAndView fReviewDetail(int revNo, ModelAndView mv, Integer page) {
      int currentPage = page == null ? 1 : page;

      Review revdetail = frService.selectReview(revNo);
      System.out.println(revdetail);
      System.out.println("후기 상세 컨트롤러 리턴옴");
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