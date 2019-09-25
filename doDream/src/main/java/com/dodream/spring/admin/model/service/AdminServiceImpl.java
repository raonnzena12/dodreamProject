package com.dodream.spring.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.admin.model.dao.AdminDao;
import com.dodream.spring.common.AdminPagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.reserve.model.vo.Reserve;

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
	

}
