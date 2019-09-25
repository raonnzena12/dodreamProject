package com.dodream.spring.project.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;


@Repository("pDao")
public class ProjectDao {
	/// 공동사용
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * pNo로 프로젝트 1개를 로드하는 DAO
	 * @param pNo
	 * @return prj
	 */
	public Project selectProject(int pNo) {
		return sqlSession.selectOne("projectMapper.selectProject", pNo);
	}

	/**
	 * 진행중/종료된 프로젝트 갯수를 받아오는 DAO
	 * @return listCount
	 */
	public int countList() {
		return sqlSession.selectOne("projectMapper.countList");
	}

	/**
	 * 진행중/종료된 프로젝트 리스트를 받아오는 DAO
	 * @param category
	 * @param pi
	 * @return pList
	 */
	public ArrayList<Project> selectPrjList(String category, PageInfo pi) {
		// 페이징 처리가 적용된 목록 조회
		// -> MyBatis RowBounds 사용
		
		// offset : 몇개의 게시글을 건너 뛰고 조회를 할 건지에 대한 계산
		int offset = ( pi.getCurrentPage() - 1 ) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectPrjList", category, rowBounds);
	}

	/**
	 * 선택된 프로젝트의 조회수를 올리는 DAO
	 * @param pNo
	 */
	public void updatePrjCount(int pNo) {
		sqlSession.update("projectMapper.updatePrjCount", pNo);
	}

	/**
	 * 프로젝트 등록 페이지로 넘어가기 전 pNo를 생성해주는 DAO
	 * @return pNo
	 */
	public int createProjectNumber() {
		return sqlSession.selectOne("projectMapper.createProjectNumber");
	}

	/**
	 * reward번호 list로 리워드 리스트를 반환하는 DAO
	 * @param rewardList
	 * @return rList
	 */
	public ArrayList<Reward> selectRewardList(ArrayList<String> rewardList) {
		return (ArrayList)sqlSession.selectList("projectMapper.selectRewardList", rewardList);
	}

	

	
}
