package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.customerCenter.model.vo.Faq;
import com.dodream.spring.customerCenter.model.vo.Search;
 

@Repository("FaqDao")
public class FaqDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/** FAQ 목록 조회를 위한 DAO
	 * @return
	 */
	public ArrayList<Faq> selectList() {
		
		return (ArrayList)sqlSession.selectList("centerMapper.faqSelect");
	}
	
	/** FAQ 검색을 위한 DAO
	 * @param search
	 * @return
	 */
	public ArrayList<Faq> searchList(Search search) {
		
		return (ArrayList)sqlSession.selectList("centerMapper.searchList",search);
	}
}
 