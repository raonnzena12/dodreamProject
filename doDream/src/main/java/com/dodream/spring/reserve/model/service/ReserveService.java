package com.dodream.spring.reserve.model.service;

import java.util.ArrayList;

import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.vo.Reserve;

public interface ReserveService {
		
	/** 
	 * 예약번호로 예약 상세를 조회하는 Service
	 * @param rsvNo
	 * @return reserve
	 */
	public abstract Reserve selectReserve(int rsvNo);

	/**
	 * 예약번호로 예약된 리워드 리스트를 조회하는 Service
	 * @param rsvNo
	 * @return rList
	 */
	public abstract ArrayList<Reward> selectRewardList(int rsvNo);
}
