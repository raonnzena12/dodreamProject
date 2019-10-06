package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.report.model.vo.Report;
import com.dodream.spring.report.model.vo.ReportReply;
import com.dodream.spring.reserve.model.vo.Reserve;

/**
 * @author user1
 *
 */
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

	/** 신고 답변 등록 
	 * @param report
	 * @param request
	 * @return result 
	 */
	public abstract int insertReportReply(ReportReply reportReply);

	/** 신고 답변 등록시 답변 완료 띄우기 
	 * @param reportRpRefRno
	 * @return result
	 */
	public abstract int updateReport(int reportRpRefRno);

	/** 신고 답변 리스트 
	 * @return list 
	 */
	public abstract ArrayList<ReportReply> reportRlistView();

	/** 댓글 리스트 
	 * @return list
	 */
	public abstract ArrayList<Reply> replyListView();

	/** 댓글 삭제
	 * @param reNo
	 * @return result
	 */
	public abstract int removeReply(int reNo);

	/** 공지사항 목록
	 * @return list
	 */
	public abstract ArrayList<Notice> selectNoticeList();

	/** 주문 예약 취소 
	 * @return result
	 */
	public abstract int cancelReserve(int resNo);

	/** 공지사항 삭제
	 * @param nNo
	 * @return result 
	 */
	public abstract int removeNotice(int nNo);

	/** 리뷰 목록
	 * @return list
	 */
	public abstract ArrayList<Review> selectReviewList();

	/** 리뷰 검색
	 * @param nNo
	 * @return notice
	 */
	public abstract Notice selectNotice(int nNo);

	/** 리뷰 검색
	 * @param revNo
	 * @return review
	 */
	public abstract Review selectReview(int revNo);

	
	/** 프로젝트에 해당하는 Reserve를 호출해옵니다.
	 * @param pNo
	 * @return rList
	 */
	public abstract ArrayList<Reserve> selectReserveListTarget(int pNo);

	/** 결제가 완료된 Reserve의 상태값을 변경해줍니다(성공).
	 * @param rNo
	 * @return result
	 */
	public abstract int updateReserveStatusToSuccess(int[] rNo);

	/** 결제가 완료된 Reserve의 상태값을 변경해줍니다(실패).
	 * @param rNo
	 * @return result
	 */
	public abstract int updateReserveStatusToFail(int[] rNo);

	


}
