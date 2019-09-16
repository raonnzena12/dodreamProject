package com.dodream.spring.cCenter.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.cCenter.model.dao.faqDao;

@Service("faqService")
public class faqServiceImpl implements faqService {

	@Autowired
	private faqDao faqDao;
}
