package com.dodream.spring.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.admin.model.dao.AdminDao;

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
	

}
