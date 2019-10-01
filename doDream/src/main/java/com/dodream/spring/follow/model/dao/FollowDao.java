package com.dodream.spring.follow.model.dao;


import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.follow.model.vo.Follow;

@Repository("fDao")
public class FollowDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int countFollow(int userNo) {
		
		return sqlSession.selectOne("followMapper.countFollow", userNo);
	}

	public int countFollower(int userNo) {
		
		return sqlSession.selectOne("followMapper.countFollower", userNo);
	}

	public List<Follow> selectFollowList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("followMapper.selectFollowList", userNo);
	}

	public List<Follow> selectFollowerList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("followMapper.selectFollowerList", userNo);
	}



}
