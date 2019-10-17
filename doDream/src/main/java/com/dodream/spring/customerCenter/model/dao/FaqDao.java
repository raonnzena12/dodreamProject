package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;
 

@Repository("FaqDao")
public class FaqDao { 

	@Autowired
	private SqlSessionTemplate sqlSession;
 
	/** FAQ 목록 조회를 위한 DAO
	 * @param pi  
	 * @return 
	 */
	public ArrayList<Faq> selectList(PageInfo pi) {
		
		// offset : 몇 개의 게시글을 건너 뛰고 조회를 할건지에 대한 계산
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		      
		// RowBounds는 ibatis의 속성이며, ibatis는 mybatis의 이전 버전이다.
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("centerMapper.faqSelect", null,  rowBounds);
	}
	
	/** FAQ 검색을 위한 DAO
	 * @param search
	 * @return
	 */
	public ArrayList<Faq> searchList(Search search) {
		
		return (ArrayList)sqlSession.selectList("centerMapper.searchList",search);
	}

   public int faqListCount() {

      return sqlSession.selectOne("centerMapper.faqListCount");

   }

	public int fProjectCount() {
		
		return sqlSession.selectOne("centerMapper.fProjectCount");
	}
}
 