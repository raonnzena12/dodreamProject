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

	public int countLeaveMember() {
		return sqlSession.selectOne("adminMemberMapper.countLeaveMember");
	}

	public int countBlackListMember() {
		return sqlSession.selectOne("adminMemberMapper.countBlackListMember");
	}

	public int countProject1() {
		return sqlSession.selectOne("adminFundingMapper.countProject1");
	}
	
	public int countProject2() {
		return sqlSession.selectOne("adminFundingMapper.countProject2");
	}
	
	public int countProject3() {
		return sqlSession.selectOne("adminFundingMapper.countProject3");
	}


}
