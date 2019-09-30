package com.dodream.spring.reserve.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.dao.ReserveDao;
import com.dodream.spring.reserve.model.vo.Reserve;

@Service("rsvService")
public class ReserveServiceImpl implements ReserveService {
	
	@Autowired
	private ReserveDao rsvDao;

	@Override
	public Reserve selectReserve(int rsvNo) {
		return rsvDao.selectReserve(rsvNo);
	}

	@Override
	public ArrayList<Reward> selectRewardList(int rsvNo) {
		return rsvDao.selectRewardList(rsvNo);
	}
}
