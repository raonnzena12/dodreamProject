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


}
