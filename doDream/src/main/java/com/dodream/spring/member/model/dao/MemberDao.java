package com.dodream.spring.member.model.dao;


import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.report.model.vo.Report;

@Repository("mDao")
public class MemberDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectMember(Member mem) {
		Member loginUser = sqlSession.selectOne("memberMapper.selectOne", mem);
		return loginUser;
	}

	public List<Member> selectCheckEmail(String userEmail) {
		return sqlSession.selectList("memberMapper.selectCheckEmail", userEmail);
	}

	public List<Member> selectCheckNickname(String userNickname) {
		return sqlSession.selectList("memberMapper.selectCheckNickname", userNickname);
	}

	public int insertMember(Member member) {
		return sqlSession.insert("memberMapper.insertMember", member);
  }
  
  public int countVisitToday(int userNo) {
		return sqlSession.insert("memberMapper.countVisitToday",userNo);
	}

	public int checkVisitToday(int userNo) {
		return sqlSession.selectOne("memberMapper.checkVisitToday",userNo);
	}

	public int updateMember(Member mem) {
		
		return sqlSession.update("memberMapper.updateMember", mem);
	}

	public int updatePwd(Member mem) {
		return sqlSession.update("memberMapper.updatePwd", mem);
	}

	public int checkValidate(Member member) {
		return sqlSession.selectOne("memberMapper.checkValidate", member);
	}


	public int insertSNS(Member member) {
		return sqlSession.insert("memberMapper.insertSNS", member);
	}

	public int countOpenProject(int userNo) {
		
		return sqlSession.selectOne("projectMapper.countOpenProject", userNo);
	}

	public int projectJoinCount(int userNo) {
		
		return sqlSession.selectOne("projectMapper.projectJoinCount", userNo);
	}

	public int projectCloseCount(int userNo) {
		
		return sqlSession.selectOne("projectMapper.projectCloseCount", userNo);
	}

	public int deleteMember(int userNo) {
		
		return sqlSession.update("memberMapper.deleteMember", userNo);
	}
	
	public ArrayList<Project> myFundingList(int userNo) {

		return (ArrayList)sqlSession.selectList("projectMapper.myFundingList", userNo);
	}

	public ArrayList<Project> myOpenProjectList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("projectMapper.myOpenProjectList", userNo);
	}

	public ArrayList<Project> myLikePRJList(int userNo) {
	
		return (ArrayList)sqlSession.selectList("projectMapper.myLikePRJList", userNo);
	}

	public ArrayList<Report> myReportList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("adminReportMapper.myReportList", userNo);
	}

	public ArrayList<Report> myReportReplyList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("adminReportMapper.myReportReplyList", userNo);
	}

	/**
	 * 네이버 로그인하는 DAO
	 * @param email
	 * @return loginUser
	 */
	public Member naverLogin(String email) {
		return sqlSession.selectOne("memberMapper.naverLogin", email);
	}

	public Member socialSelect(int userNo) {
		
		return sqlSession.selectOne("memberMapper.socialSelect", userNo);
	}


	
}
