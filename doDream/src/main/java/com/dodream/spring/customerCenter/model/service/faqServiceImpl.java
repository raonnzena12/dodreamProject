package com.dodream.spring.customerCenter.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.customerCenter.model.dao.faqDao;
 
@Service("faqService")
public class faqServiceImpl implements faqService {

	@Autowired
	private faqDao faqDao;
}
