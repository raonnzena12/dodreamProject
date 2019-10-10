package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.dao.FReviewDao;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Project;

@Service("FReviewService")
public class FReviewServiceImpl implements FReviewService {

   @Autowired
   private FReviewDao frDao;

   @Override
   public Review selectReview(int revNo) {
       
      // 1) 조회수 증가
      frDao.addReadCount(revNo);   
      System.out.println(revNo);
      System.out.println("조회수 증가 성공");      
      // 2) 게시글 상세 조회
      return frDao.selectReview(revNo);
   }

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

   @Override
   public ArrayList<Review> selectfrevList(FilteringList filter, int currentPage) {

      // 진행중/진행완료 상태의 프로젝트 갯수 조회
      int listCount = frDao.countList();
      
      // 프로젝트 페이징 처리
      PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
      
      // 목록 조회 후 리턴
      ArrayList<Review> frList = frDao.selectfrevList(filter, pi);
      return frList;
   }
}
 