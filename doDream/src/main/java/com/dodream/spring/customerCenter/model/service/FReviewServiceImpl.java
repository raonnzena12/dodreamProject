package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.dao.FReviewDao;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.revKategorie;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Project;

@Service("FReviewService")
public class FReviewServiceImpl implements FReviewService {

   @Autowired
   private FReviewDao frDao;

   /*
   @Override
   public ArrayList<Review> selectfrevList(String category, int currentPage) {
      // 전체 게시물 수 조회 
      int listCount = frDao.getListCount();
      System.out.println("서비스단 부분 체크");
      PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
      
      // 목록 조회 후 리턴
      // ArrayList<Project> pList = frDao.selectPrjList(category, pi);
      
      return frDao.selectList(pi);
   }  
   */
   
   @Override
   public ArrayList<Review> selectfrevList(revKategorie kategorie, int currentPage) {
	   int listCount = frDao.getListCount();
	   PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
	   System.out.println(pi);
	   ArrayList<Review> revList = frDao.selectList(kategorie, pi);
   	return revList;
   }
   
   
/* =================================================================================== */   
   
   // 상세페이지 서비스 단
   @Override
   public Review selectReview(int revNo) {
       
      // 1) 조회수 증가
      frDao.addReadCount(revNo);   
      System.out.println(revNo);
      System.out.println("조회수 증가 성공");      
      // 2) 게시글 상세 조회
      return frDao.selectReview(revNo);
   }
   
}
 