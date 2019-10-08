package com.dodream.spring.reserve.model.service;

import java.util.ArrayList;

import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.vo.History;
import com.dodream.spring.reserve.model.vo.HistoryList;
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

	/**
	 * 특정 예약번호의 배송주소를 업데이트하는 Service
	 * @param reserve
	 * @return result
	 */
	public abstract int updateReserveAddress(Reserve reserve);

	/**
	 * 예약테이블 PK키를 하나 받아오는 Service
	 * @return resNo
	 */
	public abstract int selectResNo();
	
	/**
	 * 예약테이블에 예약정보를 입력하는 Service
	 * @param reserve
	 * @return result
	 */
	public abstract int insertReserve(Reserve reserve);

	/**
	 * 예약목록 테이블에 리워드 정보를 입력하는 Service
	 * @param hList
	 * @param resNo 
	 * @return result
	 */
	public abstract int insertHistory(HistoryList hList, int resNo);

	/**
	 * 예약을 취소하는 Service
	 * @param rsvNo
	 * @return result
	 */
	public abstract int updateFundingStatus(int rsvNo);

	/**
	 * 받은 파라메터들을 HistoryList로 반환하는 Service
	 * @param rNo
	 * @param select
	 * @param input
	 * @return hList
	 */
	public abstract ArrayList<History> assembleHistory(String rNo, String select, String input, String count);

	/**
	 * customer_Uid update용 Service
	 * @param reserve
	 * @return result
	 */
	public abstract int updateReserveCredit(Reserve reserve);

	/**
	 * 해당 유저의 예약현황 리스트를 받아오는 Service
	 * @param userNo
	 * @return rList
	 */
	public abstract ArrayList<Reserve> selectReserveList(FilteringList filter);

}
