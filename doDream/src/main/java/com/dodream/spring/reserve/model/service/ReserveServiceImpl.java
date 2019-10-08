package com.dodream.spring.reserve.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.dao.ReserveDao;
import com.dodream.spring.reserve.model.vo.History;
import com.dodream.spring.reserve.model.vo.HistoryList;
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

	@Override
	public int updateReserveAddress(Reserve reserve) {
		return rsvDao.updateReserveAddress(reserve);
	}

	@Override
	public int selectResNo() {
		return rsvDao.selectResNo();
	}

	@Override
	public int insertReserve(Reserve reserve) {
		return rsvDao.insertReserve(reserve);
	}

	@Override
	public int insertHistory(HistoryList hList, int resNo) {
		int result = 0;
		for (  History his : hList.gethList() ) {
			his.setRsvNo(resNo);
			result += rsvDao.insertHistory(his);
		}
		return result;
	}

	@Override
	public int updateFundingStatus(int rsvNo) {
		return rsvDao.updateFundingStatus(rsvNo);
	}

	@Override
	public ArrayList<History> assembleHistory(String rNo, String select, String input, String count) {
		ArrayList<History> hList = new ArrayList<>();
		String[] rArr = rNo.split("/");
		String[] sArr = select.split("/");
		String[] iArr = input.split("/");
		String[] cArr = count.split("/");
		for ( int i = 0 ; i < rArr.length ; i++ ) {
			History tmp = new History();
			tmp.setRwdNo(Integer.parseInt(rArr[i]));
			tmp.setRwdOption(sArr[i]);
			if ( !iArr[i].equals("-1") ) tmp.setRwdOption(iArr[i]);
			tmp.setRwdAmount(Integer.parseInt(cArr[i]));
			hList.add(tmp);
		}
		return hList;
	}

	@Override
	public int updateReserveCredit(Reserve reserve) {
		return rsvDao.updateReserveCredit(reserve);
	}

	@Override
	public ArrayList<Reserve> selectReserveList(FilteringList filter) {
		return rsvDao.selectReserveList(filter);
	}
}
