package com.dodream.spring.cCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dodream.spring.cCenter.model.dao.noticeDao;

@Service("noticeService")
public class noticeServiceImpl implements noticeService {

	@Autowired
	private noticeDao noticeDao;

	/*
	@Override
	public ArrayList<notice> selectList() {
		// TODO Auto-generated method stub
		return null;
	}
	*/
}
