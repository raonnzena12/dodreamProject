package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.report.model.vo.Report;
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

	/** 결제 현황 Service
	 * @return list
	 */
	public abstract ArrayList<Reserve> selectReserveList2();

	/** 주문 예약 취소 Service
	 * @return list
	 */
	public abstract ArrayList<Reserve> selectReserveList3();

	/** 신고 개수 관련 Service
	 * @return count
	 */
	public abstract int countReport();
 
	/** 신고 목록 관련 Service
	 * @return list
	 */
	public abstract ArrayList<Report> selectReportList();

	/** 방문자수 구하는 Service
	 * @return list
	 */
	public abstract ArrayList<Integer> countVisit();

	/** 오늘 방문자수 구하는 Service
	 * @return result
	 */
	public abstract int countToday();

	/** 카테고리 분포 관련 Service
	 * @return list
	 */
	public abstract ArrayList<Integer> countCategory();

	/** 일반 회원 > 블랙리스트 처리 Service 
	 * @param userNo
	 * @return result
	 */
	public abstract int goBlackList(int userNo);

	/** 블랙리스트 > 일반 회원 처리 Service
	 * @param userNo
	 * @return result
	 */
	public abstract int goReturnuser(int userNo);

	/** 심사 대기중 > 심사 완료
	 * @param pNo
	 * @return result
	 */
	public abstract int passProject(int pNo);

	/** 심사 대기중  > 심사 탈락
	 * @param pNo
	 * @return result
	 */
	public abstract int dropOutProject(int pNo);

	/** 심사 완료  > 프로젝트 오픈
	 * @param pNo
	 * @return result
	 */
	public abstract int openProject(int pNo);

	/** 오픈 중 > 심사 대기 중
	 * @param pNo
	 * @return result
	 */
	public abstract int stopProject(int pNo);
	


}
