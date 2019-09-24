package com.dodream.spring.project.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Reward;

@Repository("pDao2")
public class ProjectDao2 {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/**
	 * 리워드 조회용 DAO
	 * @param pno
	 * @return
	 */
	public ArrayList<Reward> selectReward(int pno) {
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectReward", pno);
	}


	/**
	 * 프로젝트 좋아요용 DAO
	 * @param userNo
	 * @param pNo
	 * @return
	 */
	public int insertProjectLike(Like like) {
		
		return sqlSession.insert("projectMapper.insertProjectLike", like);
	}
}
