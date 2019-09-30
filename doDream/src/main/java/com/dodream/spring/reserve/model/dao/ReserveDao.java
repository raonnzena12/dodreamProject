package com.dodream.spring.reserve.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.project.model.vo.Reward;
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
}
