package com.dodream.spring.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;

@Repository("aDao")
public class AdminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int countNewMember() {
		return sqlSession.selectOne("adminMemberMapper.countNewMember");
	}

	public int countLeaveMember() {
		return sqlSession.selectOne("adminMemberMapper.countLeaveMember");
	}

	public int countBlackListMember() {
		return sqlSession.selectOne("adminMemberMapper.countBlackListMember");
	}

	public int countProject1() {
		return sqlSession.selectOne("adminFundingMapper.countProject1");
	}
	
	public int countProject2() {
		return sqlSession.selectOne("adminFundingMapper.countProject2");
	}
	
	public int countProject3() {
		return sqlSession.selectOne("adminFundingMapper.countProject3");
	}

	/** 회원 목록 조회 Dao
	 * @return list 
	 */
	public ArrayList<Member> selectMemberList() {

		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectMemberList");
	}

	/** 블랙리스트 회원 목록 조회 Dao
	 * @return list
	 */
	public ArrayList<Member> selectBlackList() {
		
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectBlackList");
	}

	/** 심사 대기 중인 프로젝트 목록 조회 Dao
	 * @return
	 */
	public ArrayList<Project> selectProjectList1() {

		return (ArrayList)sqlSession.selectList("adminFundingMapper.selectProjectList1");
	}

	/** 심사 완료된 프로젝트 목록 조회 Dao
	 * @return
	 */
	public ArrayList<Project> selectProjectList2() {
		
		return (ArrayList)sqlSession.selectList("adminFundingMapper.selectProjectList2");
	}
	
	/** 오픈 중인 프로젝트 목록 조회 Dao
	 * @return
	 */
	public ArrayList<Project> selectProjectList3() {
		
		return (ArrayList)sqlSession.selectList("adminFundingMapper.selectProjectList3");
	}
	
	/** 마감된 프로젝트 목록 조회 Dao
	 * @return
	 */
	public ArrayList<Project> selectProjectList4() {
		
		return (ArrayList)sqlSession.selectList("adminFundingMapper.selectProjectList4");
	}
	

}
