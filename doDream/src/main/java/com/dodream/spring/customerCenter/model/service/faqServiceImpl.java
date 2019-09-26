package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.customerCenter.model.dao.faqDao;
import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;
 
@Service("faqService")
public class faqServiceImpl implements faqService {

	@Autowired
	private faqDao faqDao;

	@Override
	public ArrayList<Faq> selectList() {
		
		return faqDao.selectList();
	}

	@Override
	public ArrayList<Faq> searchList(Search search) {
		
		return faqDao.searchList(search);
	} 
}
