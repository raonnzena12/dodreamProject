package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.vo.Notice;

 
@Repository("NoticeDao")
public class NoticeDao {
 
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Notice> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit(); 
	      
		// RowBounds는 ibatis의 속성이며, ibatis는 mybatis의 이전 버전이다.
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList) sqlSession.selectList("centerMapper.noticeSelect", null,  rowBounds);
	
	} 

	public int noticeListCount() {
		
		return sqlSession.selectOne("centerMapper.noticeListCount");
	}
} 
 