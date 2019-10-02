package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.project.model.vo.Project;

@Repository("FReviewDao")
public class FReviewDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/** 프로젝트 후기 리스트를 받아오는 dao
	 * @param category
	 * @return frList
	 */
	public ArrayList<Review> selectfrList(String category) {
		
		/*
		int offset = ( pi.getCurrentPage() - 1 ) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		*/
		 
		return (ArrayList)sqlSession.selectList("centerMapper.selectfrList", category);
	}
}