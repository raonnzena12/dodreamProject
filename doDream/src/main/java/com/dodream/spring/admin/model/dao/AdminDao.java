package com.dodream.spring.admin.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.admin.model.vo.Alarm;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.report.model.vo.Report;
import com.dodream.spring.report.model.vo.ReportReply;
import com.dodream.spring.reserve.model.vo.Reserve;

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
		return sqlSession.selectOne("adminProjectMapper.countProject1");
	}
	
	public int countProject2() {
		return sqlSession.selectOne("adminProjectMapper.countProject2");
	}
	
	public int countProject3() {
		return sqlSession.selectOne("adminProjectMapper.countProject3");
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
	 * @return list 
	 */
	public ArrayList<Project> selectProjectList1() {

		return (ArrayList)sqlSession.selectList("adminProjectMapper.selectProjectList1");
	}

	/** 심사 완료된 프로젝트 목록 조회 Dao
	 * @return list
	 */
	public ArrayList<Project> selectProjectList2() {
		
		return (ArrayList)sqlSession.selectList("adminProjectMapper.selectProjectList2");
	}
	
	/** 오픈 중인 프로젝트 목록 조회 Dao
	 * @return list
	 */
	public ArrayList<Project> selectProjectList3() {
		
		return (ArrayList)sqlSession.selectList("adminProjectMapper.selectProjectList3");
	}
	
	/** 마감된 프로젝트 목록 조회 Dao
	 * @return list
	 */
	public ArrayList<Project> selectProjectList4() {
		
		return (ArrayList)sqlSession.selectList("adminProjectMapper.selectProjectList4");
	}

	/** 주문 예약 개수 Dao
	 * @return count
	 */
	public int countReserve1() {
		return sqlSession.selectOne("adminReserveMapper.countReserve1");
	}
	
	/** 결제 완료 개수 Dao
	 * @return count
	 */
	public int countReserve2() {
		return sqlSession.selectOne("adminReserveMapper.countReserve2");
	}
	
	/** 예약 취소 개수 Dao
	 * @return count
	 */
	public int countReserve3() {
		return sqlSession.selectOne("adminReserveMapper.countReserve3");
	}

	/** 주문 예약 현황
	 * @return list
	 */
	public ArrayList<Reserve> selectReserveList1() {
		return (ArrayList)sqlSession.selectList("adminReserveMapper.selectReserveList1");
	}

	/** 결제 현황
	 * @return list
	 */
	public ArrayList<Reserve> selectReserveList2() {
		return (ArrayList)sqlSession.selectList("adminReserveMapper.selectReserveList2");
	}

	/** 주문 예약 취소 현황
	 * @return list
	 */
	public ArrayList<Reserve> selectReserveList3() {
		return (ArrayList)sqlSession.selectList("adminReserveMapper.selectReserveList3");
	}

	/** 신고 개수 관련 Dao
	 * @return count
	 */
	public int countReport() {
		return sqlSession.selectOne("adminReportMapper.countReport");
	}

	/** 신고 목록 관련 Dao
	 * @return list
	 */
	public ArrayList<Report> selectReportView() {
		return (ArrayList)sqlSession.selectList("adminReportMapper.selectReportView");
	}

	public ArrayList<Integer> countVisit() {
		return (ArrayList)sqlSession.selectList("adminMemberMapper.countVisit");
	}

	/** 오늘 방문자수 구하는 Dao
	 * @return result
	 */
	public int countToday() {
		return sqlSession.selectOne("adminMemberMapper.countToday");
	}

	/** 카테고리 분포 관련 Dao
	 * @return list
	 */
	public ArrayList<Integer> countCategory() {
		return (ArrayList)sqlSession.selectList("adminProjectMapper.countCategory");
	}

	/** 일반 회원 > 블랙리스트
	 * @param userNo
	 * @return result
	 */
	public int goBlackList(int userNo) {
		return sqlSession.update("adminMemberMapper.goBlackList",userNo);
	}

	/** 블랙리스트 > 일반회원
	 * @param userNo
	 * @return result
	 */
	public int goReturnUser(int userNo) {
		return sqlSession.update("adminMemberMapper.goReturnUser",userNo);
	}

	/** 심사 대기중 > 심사 완료 
	 * @param pNo
	 * @return result
	 */
	public int passProject(int pNo) {
		return sqlSession.update("adminProjectMapper.passProject", pNo);
	}

	/** 심사 대기중 > 심사 탈락
	 * @param pNo
	 * @return result
	 */
	public int dropOutProject(int pNo) {
		return sqlSession.delete("adminProjectMapper.dropOutProject", pNo);
	}

	/** 심사 완료 > 프로젝트 오픈
	 * @param pNo
	 * @return result 
	 */
	public int openProject(int pNo) {
		return sqlSession.update("adminProjectMapper.openProject", pNo);
	}

	/** 오픈 중 > 심사 대기 중
	 * @param pNo
	 * @return result
	 */
	public int stopProject(int pNo) {
		return sqlSession.update("adminProjectMapper.stopProject", pNo);
	}

	/** 신고 답변 관련 Dao
	 * @param report
	 * @param request
	 * @return result
	 */
	public int insertReportReply(ReportReply reportReply) {
		return sqlSession.insert("adminReportMapper.insertReportReply", reportReply);
	}

	/** 신고 답변 등록시 답변 완료 띄우기
	 * @param reportRpRefRno
	 * @return result
	 */
	public int updateReport(int reportRpRefRno) {
		return sqlSession.update("adminReportMapper.updateReport", reportRpRefRno);
	}

	/** 신고 답변 리스트 
	 * @return list 
	 */
	public ArrayList<ReportReply> reportRlistView() {
		return (ArrayList)sqlSession.selectList("adminReportMapper.reportRlistView");
	}

	/** 댓글 리스트
	 * @return list
	 */
	public ArrayList<Reply> replyListView() {
		return (ArrayList)sqlSession.selectList("adminReplyMapper.replyListView");
	}

	/** 댓글 삭제
	 * @param reNo
	 * @return result
	 */
	public int removeReply(int reNo) {
		return sqlSession.update("adminReplyMapper.removeReply", reNo);
	}

	/** 공지사항 목록
	 * @return list 
	 */
	public ArrayList<Notice> selectNoticeList() {
		return (ArrayList)sqlSession.selectList("adminNoticeMapper.selectNoticeList");
	}

	/** 공지사항 수정하기
	 * @param notice
	 * @return result
	 */  
	public int updateNotice(Notice notice) { 
		return sqlSession.update("adminNoticeMapper.updateNotice", notice);
	}

	/** 주문 예약 취소
	 * @param resNo
	 * @return result
	 */
	public int cancelReserve(int resNo) {
		return sqlSession.update("adminReserveMapper.cancelReserve", resNo);
	}

	/** 공지사항 삭제
	 * @param nNo 
	 * @return result
	 */
	public int removeNotice(int nNo) {
		return sqlSession.update("adminNoticeMapper.removeNotice", nNo);
	}

	/** 공지사항 글쓰기 써머노트
	 * @param notice
	 * @return result
	 */
	public int insertNotice(Notice notice) {
		return sqlSession.insert("adminNoticeMapper.insertNotice", notice);
	}

	/** 리뷰 작성
	 * @param review
	 * @return result
	 */
	public int insertReview(Review review) {
		return sqlSession.insert("adminReviewMapper.insertReview", review);
	}

	/** 리뷰 목록
	 * @return list
	 */
	public ArrayList<Review> selectReviewList() {
		return (ArrayList)sqlSession.selectList("adminReviewMapper.selectReviewList");
	}

	/** 해당 공지사항 조회
	 * @param nNo
	 * @return notice
	 */
	public Notice selectNotice(int nNo) {
		return sqlSession.selectOne("adminNoticeMapper.selectNotice", nNo);
	}

	/** 해당 리뷰 조회
	 * @param revNo
	 * @return review
	 */
	public Review selectReview(int revNo) {
		return sqlSession.selectOne("adminReviewMapper.selectReview", revNo);
	}


	/** 결제하는 프로젝트에 해당하는 Reserve 조회
	 * @param pNo
	 * @returnr rList
	 */
	public ArrayList<Reserve> selectReserveListTarget(int pNo) {
		return (ArrayList)sqlSession.selectList("adminReserveMapper.selectReserveListTarget",pNo);
	}

	public int updateReserveStatusToSuccess(String[] rNo) {
		return sqlSession.update("adminReserveMapper.updateReserveStatusToSuccess", rNo);
	}

	public int updateReserveStatusToFail(String[] rNo) {
		return sqlSession.update("adminReserveMapper.updateReserveStatusToFail",rNo);
  }
  
	/** 해당 리뷰 수정
	 * @param review
	 * @return result
	 */
	public int updateReview(Review review) {
		return sqlSession.update("adminReviewMapper.updateReview", review);
	}

	/** 리뷰 삭제
	 * @param revNo
	 * @return result
	 */
	public int removeReview(int revNo) {
		return sqlSession.update("adminReviewMapper.removeReview", revNo);

	}

	/**
	 * 펀딩 성공한 프로젝트 리스트를 반환하는 DAO
	 * @return pList
	 */
	public ArrayList<Project> selectProjectList5() {
		return (ArrayList)sqlSession.selectList("adminProjectMapper.selectProjectList5");
	}

	/** 알림 리스트
	 * @return list
	 */
	public ArrayList<Alarm> goAlarmList() {
		return (ArrayList)sqlSession.selectList("adminAlarmMapper.goAlarmList");
	}

	public String getAlarmCount1() {
		return sqlSession.selectOne("adminAlarmMapper.getAlarmCount1")+"";
	}

	public String getAlarmCount2() {
		return sqlSession.selectOne("adminAlarmMapper.getAlarmCount2")+"";
	}

	public String getAlarmCount3() {
		return sqlSession.selectOne("adminAlarmMapper.getAlarmCount3")+"";
	}



}
