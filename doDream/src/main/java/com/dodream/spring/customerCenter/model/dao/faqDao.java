package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;
 

@Repository("faqDao")
public class faqDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Faq> selectList() {
		
		return (ArrayList)sqlSession.selectList("centerMapper.faqSelect");
	}
	// FAQ 검색을 위한 dao
	public ArrayList<Faq> searchList(Search search) {
		
		return (ArrayList)sqlSession.selectList("centerMapper.searchList",search);
	}
}
 