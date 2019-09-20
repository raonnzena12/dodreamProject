package com.dodream.spring.cCenter.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

 
@Repository("noticeDao")
public class noticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
