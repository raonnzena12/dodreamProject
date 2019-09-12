package com.dodream.spring.fund.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("fDao")
public class FundDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
}
