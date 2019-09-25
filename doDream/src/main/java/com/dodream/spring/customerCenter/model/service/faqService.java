package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;

public interface faqService {

	ArrayList<Faq> selectList();

	public abstract ArrayList<Faq> searchList(Search search);

 
}
 