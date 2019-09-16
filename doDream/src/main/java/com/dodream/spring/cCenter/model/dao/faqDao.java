package com.dodream.spring.cCenter.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("faqDao")
public class faqDao {
 
	@Autowired
	private SqlSessionTemplate sqlSession;
}
