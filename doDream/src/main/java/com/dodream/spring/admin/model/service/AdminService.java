package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;

public interface AdminService {

	/** 관리자페이지에서 신규회원의 수를 세주는 Service
	 * @return result
	 */
	public abstract int countNewMember();

	/** 관리자 페이지에서 탈퇴회원의 수를 세주는 Service
	 * @return result 
	 */
	public abstract int countLeaveMember();

	/** 관리자 페이지에서 블랙리스트 회원의 수를 세주는 Service
	 * @return result
	 */
	public abstract int countBlackListMember();

	/** 관리자 페이지에서 심사 대기 중인 프로젝트 수를 세주는 Service
	 * @return result
	 */
	public abstract int countProject1();
	
	/** 관리자 페이지에서 심사 대기 중인 프로젝트 수를 세주는 Service
	 * @return result
	 */
	public abstract int countProject2();
	
	/** 관리자 페이지에서 심사 대기 중인 프로젝트 수를 세주는 Service
	 * @return result
	 */
	public abstract int countProject3();

	/** 회원 리스트 Service (페이징 처리)
	 * @param currentPage
	 * @return ArrayList
	 */
	public abstract ArrayList<Member> selectMemberList(int currentPage);

	/** 블랙리스트 Service( 페이징 처리)
	 * @param currentPage
	 * @return ArrayList
	 */
	public abstract ArrayList<Member> selectBlackList(int currentPage);

	/** 프로젝트 목록 Service(심사중)
	 * @param currentPage
	 * @return ArrayList
	 */
	public abstract ArrayList<Project> selectProjectList(int currentPage);


}
