package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import com.dodream.spring.customerCenter.model.vo.Review;

public interface FReviewService {

	/** 프로젝트 후기로 최신순으로 성공 프로젝트를 로드하는 SErvice
	 * @param category
	 * @param currentPage
	 * @return frList
	 */
	ArrayList<Review> selectfrList(String category, int currentPage);
	
}
