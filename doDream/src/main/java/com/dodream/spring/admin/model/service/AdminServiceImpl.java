package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.admin.model.dao.AdminDao;
import com.dodream.spring.common.AdminPagination;
import com.dodream.spring.common.model.vo.PageInfo;
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
	public int openProject(int pNo) {
		return aDao.openProject(pNo);
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

	

}
