package com.dodream.spring.member.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.report.model.vo.Report;

public interface MemberService {

	/**
	 * 로그인을 위한 Service
	 * @param mem
	 * @return loginUser
	 */
	public abstract Member loginMember(Member mem);

	public abstract List<Member> checkEmail(String userEmail);

	public abstract List<Member> checkNickname(String userNickname);

	public abstract int insertMember(Member member);

  /**
	 * 로그인 시 DAYCOUNT에 카운트 해주는 Service
	 * @param userNo
	 * @return result
	 */
	public abstract int countVisitToday(int userNo);

	/**
	 * 위 countVisitToday 함수가 실행되기 전 데이터가 있는지 체크해주는 Service
	 * @param userNo
	 * @return result
	 */
	public abstract int checkVisitToday(int userNo);

	public abstract int updateMember(Member mem, HttpServletRequest request, MultipartFile userProfileImage);

	public abstract int updatePwd(Member mem);

	/**
	 * 아이디와 비밀번호가 맞는지 확인해주는 Service
	 * @param member
	 * @return result
	 */
	public abstract int checkValidate(Member member);


	public abstract int insertSNS(Member member);

	public abstract int countOpenProject(int userNo);

	public abstract int projectJoinCount(int userNo);

	public abstract int projectCloseCount(int userNo);

	public abstract int deleteMember(int userNo);

	public abstract ArrayList<Project> myFundingList(int userNo);

	public abstract ArrayList<Project> myOpenProjectList(int userNo);

	public abstract ArrayList<Project> myLikePRJList(int userNo);

	public abstract ArrayList<Report> myReportList(int userNo);

	public abstract ArrayList<Report> myReportReplyList(int userNo);



}
