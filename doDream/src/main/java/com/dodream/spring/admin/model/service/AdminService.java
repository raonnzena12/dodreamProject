package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.reserve.model.vo.Reserve;

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
	public abstract ArrayList<Member> selectMemberList();

	/** 블랙리스트 Service( 페이징 처리)
	 * @return ArrayList
	 */
	public abstract ArrayList<Member> selectBlackList();

	/** 프로젝트 목록 Service(심사 대기 중)
	 * @return ArrayList
	 */
	public abstract ArrayList<Project> selectProjectList1();

	/** 프로젝트 목록 Service(심사 완료된)
	 * @return ArrayList
	 */
	public abstract ArrayList<Project> selectProjectList2();
	
	/** 프로젝트 목록 Service(오픈중)
	 * @return ArrayList
	 */
	public abstract ArrayList<Project> selectProjectList3();
	
	/** 프로젝트 목록 Service(마감된)
	 * @return ArrayList
	 */
	public abstract ArrayList<Project> selectProjectList4();

	/** 주문 예약 개수 Service
	 * @return int
	 */
	public abstract int countReserve1();
	
	/** 결제 완료 개수 Service
	 * @return int
	 */
	public abstract int countReserve2();
	
	/** 예약 취소 개수 Service
	 * @return int
	 */
	public abstract int countReserve3();

	/** 주문 예약 현황 Service
	 * @return list
	 */
	public abstract ArrayList<Reserve> selectReserveList1();
	


}
