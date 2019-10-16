package com.dodream.spring.customerCenter.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.revKategorie;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Project;

@Repository("FReviewDao")
public class FReviewDao {
 
   @Autowired
   private SqlSessionTemplate sqlSession;

   /** 
    * 프로젝트 후기 리스트를 받아오는 dao 
 * @param kategorie 
    * @param category
    * @return frList
    */ 
   public ArrayList<Review> selectList(revKategorie kategorie, PageInfo pi) {
      

	   	// 페이징 처리가 적용된 목록 조회
        // -> Mybatis RowBounds 사용
            
		// offset : 몇 개의 게시글을 건너 뛰고 조회를 할건지에 대한 계산
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
      
		// RowBounds는 ibatis의 속성이며, ibatis는 mybatis의 이전 버전이다.
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());

		return (ArrayList) sqlSession.selectList("centerMapper.selectfrList", kategorie, rowBounds);
   }

   public ArrayList<Project> selectPrjList(FilteringList filter, PageInfo pi) {
		// 페이징 처리가 적용된 목록 조회
		// -> MyBatis RowBounds 사용
		
		// offset : 몇개의 게시글을 건너 뛰고 조회를 할 건지에 대한 계산
		int offset = ( pi.getCurrentPage() - 1 ) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectPrjListS", filter, rowBounds);
	}
   
   /**
    * 전체 게시물수 조회 DAO
    * 
    * @return listCount
    */
   public int getListCount() {

      return sqlSession.selectOne("centerMapper.getListCount");

   }
   
   /** 후기 조회수 증가 DAO
    * @param bId
    */
   public void addReadCount(int revNo) {
      sqlSession.update("centerMapper.updateCount", revNo);
      
   }

   public Review selectReview(int revNo) {
      
      return sqlSession.selectOne("centerMapper.selectRevDetail", revNo);
   }

   public ArrayList<Review> selectPrjList(String category, PageInfo pi) {

      // 페이징 처리가 적용된 목록 조회
      // -> MyBatis RowBounds 사용
      
      // offset : 몇개의 게시글을 건너 뛰고 조회를 할 건지에 대한 계산
 
      return (ArrayList)sqlSession.selectList("centerMapper.selectfrList", category);

   }

   public int countList() {
      
      return sqlSession.selectOne("centerMapper.countList");
   }
   
   // 프로젝트 개수 
	public int projectCount() {
		return sqlSession.selectOne("centerMapper.projectCount");
	}
}