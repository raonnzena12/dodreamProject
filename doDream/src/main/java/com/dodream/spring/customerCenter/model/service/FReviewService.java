package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.revKategorie;
import com.dodream.spring.project.model.vo.FilteringList;

public interface FReviewService {

 

   /** 프로젝트 후기로 최신순으로 성공 프로젝트를 로드하는 Service
    * @param kategorie 
    * @param currentPage
    * @param mv 
    * @return frList
    */
   ArrayList<Review> selectfrevList(revKategorie kategorie, int currentPage);

 
   Review selectReview(int revNo);


   int revProjectCount();


  
   
}
 