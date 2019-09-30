package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.customerCenter.model.vo.Notice;

 
@Repository("NoticeDao")
public class NoticeDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Notice> selectList() {
		
		return (ArrayList)sqlSession.selectList("centerMapper.noticeSelect");
	
	}
} 
 