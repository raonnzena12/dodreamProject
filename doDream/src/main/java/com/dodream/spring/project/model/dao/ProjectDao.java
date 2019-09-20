package com.dodream.spring.project.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("pDao")
public class ProjectDao {
	/// 창혁씨
	
	@Autowired
	private SqlSessionTemplate sqlSession;
}
