package com.dodream.spring.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("aDao")
public class AdminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int countNewMember() {
		return sqlSession.selectOne("adminMemberMapper.countNewMember");
	}


}
