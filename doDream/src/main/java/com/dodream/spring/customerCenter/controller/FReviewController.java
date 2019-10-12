package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.customerCenter.model.service.FReviewService;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Project;

@Controller
public class FReviewController {
   
   @Autowired 
   private FReviewService frService;
   
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
   
   /** ajax를 통한 페이지 데이터 불러오기
    * @param keyword
    * @param cate
    * @param order
    * @param endYn
    * @param page
    * @param request
    * @return
    */
   /*
   @ResponseBody
   @RequestMapping("loadListByAjax.dr")
   public ArrayList<Review> revListByAjax(String keyword, String cate, String order, String endYn, Integer page, HttpServletRequest request) {
      int currentPage = ( page == null ) ? 1 : page;
      int userNo = 0;
      String category = ( cate == null || cate.equals("") ) ? "total" : cate;
      String order1 = ( order == null || order.equals("") ) ? "popluar" : order;
      String endYn1 = ( endYn == null || endYn.equals("") ) ? "ALL" : endYn;
      String keyword1 = ( keyword == null || keyword.equals("") ) ? null : keyword;
      
      FilteringList filter = new FilteringList(userNo, category, order1, keyword1, endYn1);
      System.out.println(filter);
      ArrayList<Review> revList = frService.selectfrevList(filter, currentPage);
      
      return revList;
   }
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