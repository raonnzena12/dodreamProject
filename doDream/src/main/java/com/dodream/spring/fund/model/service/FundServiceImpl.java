package com.dodream.spring.fund.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.fund.model.dao.FundDao;

@Service("fService")
public class FundServiceImpl implements FundService {

	@Autowired
	private FundDao fDao;
}
