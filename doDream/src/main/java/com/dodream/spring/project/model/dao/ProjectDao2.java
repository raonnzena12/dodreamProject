package com.dodream.spring.project.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.project.model.vo.Reward;

@Repository("pDao2")
public class ProjectDao2 {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public ArrayList<Reward> selectReward(int pno) {
		
		return (ArrayList)sqlSession.selectOne("projectMapper.selectReward", pno);
	}
}
