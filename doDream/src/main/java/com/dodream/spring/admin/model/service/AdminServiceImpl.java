package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.admin.model.dao.AdminDao;
import com.dodream.spring.common.AdminPagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.member.model.vo.Member;

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
	public ArrayList<Member> selectMemberList(int currentPage) {
		
		int listCount = aDao.getListCount();
		
		// 1. 페이지 정보 저장 
		PageInfo pi = AdminPagination.getPageInfo(currentPage,listCount);
		
		// 2. 목록 조회 후 리턴
		return aDao.selectMemberList(pi);
	}

	@Override
	public ArrayList<Member> selectBlackList(int currentPage) {
		
		int listCount = aDao.getListCount();
		
		// 1. 페이지 정보 저장 
		PageInfo pi = AdminPagination.getPageInfo(currentPage,listCount);
		
		// 2. 목록 조회 후 리턴
		return aDao.selectBlackList(pi);
	}
	

}
