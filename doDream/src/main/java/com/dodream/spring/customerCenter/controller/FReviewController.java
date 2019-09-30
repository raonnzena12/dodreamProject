package com.dodream.spring.customerCenter.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.customerCenter.model.service.FReviewService;
import com.dodream.spring.customerCenter.model.vo.Review;

@Controller
public class FReviewController {

	private FReviewService frService;

	@RequestMapping("fReview.dr")
	public ArrayList<Review> frListByAjax(Integer page, String cate) {
		String category = (cate == null) ? "total" : cate; //
		int currentPage = (page == null) ? 1 : page;
		// page이라는 매개변수 값이 null과 경우 1을 대입하며,

		ArrayList<Review> frList = frService.selectfrList(category, currentPage);

		return frList;
	}

}
