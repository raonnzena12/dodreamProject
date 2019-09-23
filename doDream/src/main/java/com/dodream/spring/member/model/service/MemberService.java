package com.dodream.spring.member.model.service;

import com.dodream.spring.member.model.vo.Member;

public interface MemberService {

	/**
	 * 로그인을 위한 Service
	 * @param mem
	 * @return loginUser
	 */
	public abstract Member loginMember(Member mem);

	/**
	 * 로그인 시 DAYCOUNT에 카운트 해주는 Service
	 * @param userNo
	 * @return result
	 */
	public abstract int countVisitToday(int userNo);

	/**
	 * 위 countVisitToday 함수가 실행되기 전 데이터가 있는지 체크해주는 Service
	 * @param userNo
	 * @return result
	 */
	public abstract int checkVisitToday(int userNo);

}
