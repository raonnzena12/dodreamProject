package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.customerCenter.model.dao.NoticeDao;
import com.dodream.spring.customerCenter.model.vo.Notice;
import com.dodream.spring.customerCenter.model.vo.Review;
import com.dodream.spring.customerCenter.model.vo.centerpageInfo;
 
@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;

	@Override
	public ArrayList<Notice> selectList(int currentPage) {
		
		int listCount = noticeDao.noticeListCount();
		PageInfo pi = centerpageInfo.getcenterpageInfo(currentPage, listCount);
		System.out.println("페이징");
		System.out.println(pi);
		ArrayList<Notice> noticeList =  noticeDao.selectList(pi);
		return noticeList;
		
	}
}
