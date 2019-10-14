package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;

public interface FaqService {

	ArrayList<Faq> selectList(int currentPage);

	public abstract ArrayList<Faq> searchList(Search search);
 
 
}
  