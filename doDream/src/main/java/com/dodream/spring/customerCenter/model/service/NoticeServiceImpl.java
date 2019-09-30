package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.customerCenter.model.dao.NoticeDao;
import com.dodream.spring.customerCenter.model.vo.Notice;
 
@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;

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
