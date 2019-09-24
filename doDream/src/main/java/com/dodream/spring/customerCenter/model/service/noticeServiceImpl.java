package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.customerCenter.model.dao.noticeDao;
import com.dodream.spring.customerCenter.model.vo.Notice;
 
@Service("noticeService")
public class noticeServiceImpl implements noticeService {

	@Autowired
	private noticeDao noticeDao;

	@Override
	public ArrayList<Notice> selectList() {
		return noticeDao.selectList();
	}
  
	/*
	@Override
	public ArrayList<notice> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	*/
}
