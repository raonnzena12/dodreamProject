package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.dao.FaqDao;
import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.Search;
import com.dodream.spring.customerCenter.model.vo.centerpageInfo;
 
@Service("FaqService")
public class FaqServiceImpl implements FaqService {
 
	@Autowired
	private FaqDao faqDao;

	@Override
	public ArrayList<Faq> selectList(int currentPage) {
		int listCount = faqDao.faqListCount();
		PageInfo pi = centerpageInfo.getcenterpageInfo(currentPage, listCount);
		
		ArrayList<Faq> faqList =  faqDao.selectList(pi);
		
		return faqList;
	} 

	@Override 
	public ArrayList<Faq> searchList(Search search) {
		
		return faqDao.searchList(search);
	} 
}
