package com.dodream.spring.customerCenter.model.service;

import java.util.ArrayList;

import com.dodream.spring.customerCenter.controller.noticeController;
import com.dodream.spring.customerCenter.model.vo.Notice;;
 
public interface noticeService {

	/** 공지사항 전체 조회 서비스
	 * @return nList
	 */
	public abstract ArrayList<Notice> selectList();

	


} 
 