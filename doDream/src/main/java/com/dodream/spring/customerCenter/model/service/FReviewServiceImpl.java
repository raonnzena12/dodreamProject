package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.dao.FReviewDao;
import com.dodream.spring.customerCenter.model.vo.Review;

@Service("FReviewService")
public class FReviewServiceImpl implements FReviewService {

	private FReviewDao frDao;

	@Override
	public ArrayList<Review> selectfrevList(String category, int currentPage) {
		// 프로젝트 페이징 처리
			//PageInfo pi = Pagination.getPageInfo(currentPage);
			 
			// 프로젝트 조회 후 리턴
			System.out.println(category);
			System.out.println(currentPage);
			ArrayList<Review> frList = frDao.selectfrList(category);
			System.out.println("서비스단 데이터 리턴");
			
			return frList;
		}

	@Override
	public Review selectReview(int revId) {
		
		frDao.addReadCount(revId);
		
		return frDao.selectReview(revId);
	}
	

}
 