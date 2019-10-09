package com.dodream.spring.reserve.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.vo.History;
import com.dodream.spring.reserve.model.vo.Reserve;

@Repository("rsvDao")
public class ReserveDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 예약번호로 예약 상세를 반환하는 DAO
	 * @param rsvNo
	 * @return reserve
	 */
	public Reserve selectReserve(int rsvNo) {
		return sqlSession.selectOne("reserveMapper.selectReserve", rsvNo);
	}

	/**
	 * 예약번호로 예약 리워드 리스트를 반환하는 DAO
	 * @param rsvNo
	 * @return rList
	 */
	public ArrayList<Reward> selectRewardList(int rsvNo) {
		return (ArrayList)(sqlSession.selectList("reserveMapper.selectRewardList", rsvNo));
	}

	/**
	 * 특정 예약번호의 배송주소를 업데이트하는 DAO
	 * @param reserve
	 * @return result
	 */
	public int updateReserveAddress(Reserve reserve) {
		return sqlSession.update("reserveMapper.updateReserveAddress", reserve);
	}

	/**
	 * 예약테이블의 index를 받아오는 DAO
	 * @return rsvNo
	 */
	public int selectResNo() {
		return sqlSession.selectOne("reserveMapper.selectResNo");
	}

	/**
	 * 예약테이블에 예약 정보를 insert하는 DAO
	 * @param reserve
	 * @return result
	 */
	public int insertReserve(Reserve reserve) {
		return sqlSession.insert("reserveMapper.insertReserve", reserve);
	}

	/**
	 * History 테이블에 예약 리워드 정보를 insert 하는 DAO
	 * @param his
	 * @return result
	 */
	public int insertHistory(History his) {
		return sqlSession.insert("reserveMapper.insertHistory", his);
	}

	/**
	 * 예약번호를 받아 해당 예약을 취소하는 DAO
	 * @param rsvNo
	 * @return result
	 */
	public int updateFundingStatus(int rsvNo) {
		return sqlSession.update("reserveMapper.updateFundingStatus", rsvNo);
	}

	/**
	 * customer_uid 업데이트용 DAO
	 * @param reserve
	 * @return result
	 */
	public int updateReserveCredit(Reserve reserve) {
		return sqlSession.update("reserveMapper.updateReserveCredit", reserve);
	}

	/**
	 * 해당 유저의 예약현황 리스트를 받아오는 DAO
	 * @param userNo
	 * @return rList
	 */
	public ArrayList<Reserve> selectReserveList(FilteringList filter) {
		return (ArrayList)sqlSession.selectList("reserveMapper.selectReserveList", filter);
	}
}
