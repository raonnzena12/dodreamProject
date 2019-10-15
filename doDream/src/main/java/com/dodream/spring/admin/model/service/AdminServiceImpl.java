package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.tribes.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.admin.model.dao.AdminDao;
import com.dodream.spring.admin.model.vo.Alarm;
import com.dodream.spring.common.AdminPagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.report.model.vo.Report;
import com.dodream.spring.report.model.vo.ReportReply;
import com.dodream.spring.reserve.model.vo.Reserve;
import com.sun.org.apache.regexp.internal.REProgram;

@Service("aService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao aDao;

	@Override
	public int countNewMember() {
		return aDao.countNewMember();
	}

	@Override
	public int countLeaveMember() {
		return aDao.countLeaveMember();
	}

	@Override
	public int countBlackListMember() {
		return aDao.countBlackListMember(); 
	}

	@Override
	public int countProject1() {
		return aDao.countProject1();
	}

	@Override
	public int countProject2() {
		return aDao.countProject2();
	}
	
	@Override
	public int countProject3() {
		return aDao.countProject3();
	}

	@Override
	public ArrayList<Member> selectMemberList() {
		
		return aDao.selectMemberList();
	}

	@Override
	public ArrayList<Member> selectBlackList() {
		
		return aDao.selectBlackList();
	}

	@Override
	public ArrayList<Project> selectProjectList1() {
		
		return aDao.selectProjectList1();
	}
	 
	@Override
	public ArrayList<Project> selectProjectList2() {
		
		return aDao.selectProjectList2();
	}
	
	@Override
	public ArrayList<Project> selectProjectList3() {
		
		return aDao.selectProjectList3();
	}
	
	@Override
	public ArrayList<Project> selectProjectList4() {
		
		return aDao.selectProjectList4();
	}

	@Override
	public int countReserve1() {
		return aDao.countReserve1();
	}
	
	@Override
	public int countReserve2() {
		return aDao.countReserve2();
	}
	
	@Override
	public int countReserve3() {
		return aDao.countReserve3();
	}

	@Override
	public ArrayList<Reserve> selectReserveList1() {
		return aDao.selectReserveList1(); 
	}

	@Override
	public ArrayList<Reserve> selectReserveList2() {
		return aDao.selectReserveList2();
	}

	@Override
	public ArrayList<Reserve> selectReserveList3() {
		return aDao.selectReserveList3();
	}

	@Override
	public int countReport() {
		return aDao.countReport();
	}

	@Override
	public ArrayList<Report> selectReportList() {
		return aDao.selectReportView();
	}

	@Override
	public ArrayList<Integer> countVisit() {
		return aDao.countVisit();
	}

	@Override
	public int countToday() {
		return aDao.countToday();
	}

	@Override
	public ArrayList<Integer> countCategory() {
		return aDao.countCategory();
	}

	@Override
	public int goBlackList(int userNo) {
		return aDao.goBlackList(userNo);
	}

	@Override
	public int goReturnuser(int userNo) {
		return aDao.goReturnUser(userNo);
	}

	@Override
	public int passProject(int pNo) {
		return aDao.passProject(pNo);
	}

	@Override
	public int dropOutProject(int pNo) {
		return aDao.dropOutProject(pNo);
	}

	@Override
	public int openProject(Project prj) {
		return aDao.openProject(prj);
	}

	@Override
	public int stopProject(int pNo) {
		return aDao.stopProject(pNo);
	}

	@Override
	public int insertReportReply(ReportReply reportReply) {
		return aDao.insertReportReply(reportReply);
	}

	@Override
	public int updateReport(int reportRpRefRno) {
		return aDao.updateReport(reportRpRefRno);
	}

	@Override
	public ArrayList<ReportReply> reportRlistView() {
		return aDao.reportRlistView();
	}

	@Override
	public ArrayList<Reply> replyListView() {
		return aDao.replyListView();
	}

	@Override
	public int removeReply(int reNo) {
		return aDao.removeReply(reNo);
	}

	@Override
	public ArrayList<Notice> selectNoticeList() {
		return aDao.selectNoticeList();
	}

	@Override
	public int cancelReserve(int resNo) {
		return aDao.cancelReserve(resNo); 
	}

	@Override
	public int removeNotice(int nNo) {
		return aDao.removeNotice(nNo);
	}

	@Override
	public ArrayList<Review> selectReviewList() {
		return aDao.selectReviewList();
	}

	@Override
	public Notice selectNotice(int nNo) {
		return aDao.selectNotice(nNo);
	}

	@Override
	public Review selectReview(int revNo) {
		return aDao.selectReview(revNo);
	}

	@Override
	public ArrayList<Project> selectProjectList5() {
		return aDao.selectProjectList5();
  }
	public ArrayList<Reserve> selectReserveListTarget(int pNo) {
		return aDao.selectReserveListTarget(pNo);
	}

	@Override
	public int updateReserveStatusToSuccess(String[] rNo) {
		return aDao.updateReserveStatusToSuccess(rNo);
	}

	@Override
	public int updateReserveStatusToFail(String[] rNo) {
		System.out.println(Arrays.toString(rNo));
		return aDao.updateReserveStatusToFail(rNo);
	}

	@Override
	public ArrayList<Alarm> goAlarmList() {
		return aDao.goAlarmList();
	}

	@Override
	public String getAlarmCount1() {
		return aDao.getAlarmCount1();
	}

	@Override
	public String getAlarmCount2() {
		return aDao.getAlarmCount2();
	}

	@Override
	public String getAlarmCount3() {
		return aDao.getAlarmCount3();
	}

	@Override
	public int allCountAlarm() {
		return aDao.allCountAlarm();
	}

	@Override
	public int confirmAlarm(int alNo) {
		return aDao.confirmAlarm(alNo);
	}


	

}
