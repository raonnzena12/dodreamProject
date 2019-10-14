package com.dodream.spring.project.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Like;
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
	 * 필터링된 프로젝트 갯수를 받아오는 DAO
	 * @return listCount
	 */
	public int countListS(FilteringList filter) {
		return sqlSession.selectOne("projectMapper.countListS", filter);
	}

	/**
	 * 진행중/종료된 프로젝트 리스트를 받아오는 DAO
	 * @param category
	 * @param pi
	 * @return pList
	 */
	public ArrayList<Project> selectPrjList(FilteringList filter, PageInfo pi) {
		// 페이징 처리가 적용된 목록 조회
		// -> MyBatis RowBounds 사용
		
		// offset : 몇개의 게시글을 건너 뛰고 조회를 할 건지에 대한 계산
		int offset = ( pi.getCurrentPage() - 1 ) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectPrjListS", filter, rowBounds);
	}

	/**
	 * 선택된 프로젝트의 조회수를 올리는 DAO
	 * @param pNo
	 */
	public void updatePrjCount(int pNo) {
		sqlSession.update("projectMapper.updatePrjCount", pNo);
	}

	/**
	 * 프로젝트 등록 페이지로 넘어가기 전 프로젝트를 생성해주는 DAO
	 * @return result
	 */
	public int createProject() {
		return sqlSession.insert("projectMapper.createProject");
	}
	
	/** 
	 * 위에서 생성된 프로젝트의 번호를 가져오는 DAO
	 * @return pNo
	 */
	public int selectThisProject() {
		return sqlSession.selectOne("projectMapper.selectThisProject");
	}
  
	/**
	 * 리워드를 DB에 저장하는 DAO
	 * @param reward
	 * @return result
	 */
	public int insertReward(Reward reward) {
		return sqlSession.insert("projectMapper.insertReward", reward);
	}

	/**
	 * 프로젝트를 DB에 저장하는 DAO
	 * @param project
	 * @return result
	 */
	public int insertProject(Project project) {
		return sqlSession.insert("projectMapper.insertProject", project);
	}

  /*
  * reward번호 list로 리워드 리스트를 반환하는 DAO
	 * @param rewardList
	 * @return rList
	 */
	public ArrayList<Reward> selectRewardList(ArrayList<String> rewardList) {
		return (ArrayList)sqlSession.selectList("projectMapper.selectRewardList", rewardList);
	}

	/**
	 * 조회수 증감없이 프로젝트를 조회하는 DAO
	 * @param pNo
	 * @return prj
	 */
	public Project selecProjectS(int pNo) {
		return sqlSession.selectOne("projectMapper.selectProject", pNo);
	}

	/**
	 * project like 테이블에 insert하는 DAO
	 * @param like
	 * @return result
	 */
	public int insertLikeProject(Like like) {
		return sqlSession.insert("projectMapper.insertProjectLike", like);
	}

	/**
	 * project like 테이블 delete하는 DAO
	 * @param like
	 * @return result
	 */
	public int deleteLikeProject(Like like) {
		return sqlSession.delete("projectMapper.deleteLike", like);
	}

	/**
	 * 메인 출력에 필요한 리스트들
	 * (인기순, 최신등록순, 마감임박순) 받아오는 DAO
	 * @param userNo
	 * @return allList
	 */
	public ArrayList<Project> selectMainList(int userNo) {
		return (ArrayList)sqlSession.selectList("projectMapper.selectMainList", userNo);
	}

	/**
	 * 자신이 오픈한 프로젝트 리스트 받아오는 DAO
	 * @param filter
	 * @return pList
	 */
	public ArrayList<Project> selectOpenPrjList(FilteringList filter) {
		return (ArrayList)sqlSession.selectList("projectMapper.selectOpenPrjList", filter);
	}

	/**
	 * 프로젝트 번호에 딸린 리워드 리스트 받아오는 DAO
	 * @param pno
	 * @return rList
	 */
	public ArrayList<Reward> selectPrjRwdList(int pno) {
		return (ArrayList)sqlSession.selectList("projectMapper.selectPrjRwdList", pno);
	}

	public Project getOriginFile(int pNo) {
		return sqlSession.selectOne("projectMapper.getOriginFile",pNo);
	}

	public Project selectCurrentProject(int pNo) {
		return sqlSession.selectOne("projectMapper.selectCurrentProject",pNo);
	}

	/**
	 * 프로젝트에 딸린 리워드들을 삭제하는 DAO
	 * @param pNo
	 * @return result
	 */
	public int deleteRewards(int pNo) {
		return sqlSession.delete("projectMapper.deleteRewards",pNo);
	}

	/**
	 * 현재 프로젝트에 딸린 리워드들을 호출하는 DAO
	 * @param pNo
	 * @return rList
	 */
	public ArrayList<Reward> selectCurrentReward(int pNo) {
		return (ArrayList)sqlSession.selectList("projectMapper.selectCurrentReward", pNo);
	}



	
}
