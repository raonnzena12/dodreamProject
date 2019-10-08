package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.customerCenter.model.vo.Review;

public interface FReviewService {

	/** 프로젝트 후기로 최신순으로 성공 프로젝트를 로드하는 SErvice
	 * @param category 
	 * @param currentPage
	 * @param mv 
	 * @return frList
	 */
	ArrayList<Review> selectfrevList(String category, int currentPage);

	Review selectReview(int revNo);
	
}
