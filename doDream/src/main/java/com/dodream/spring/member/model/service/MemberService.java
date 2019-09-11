package com.dodream.spring.member.model.service;

import com.dodream.spring.member.model.vo.Member;

public interface MemberService {

	/**
	 * 회원 로그인 서비스를 위한 메소드
	 * 
	 * @param mem
	 * @return loginUser
	 */
	public abstract Member loginMember(Member mem);

	
	/**
	 * 아이디 중복 검사
	 * 
	 * @param id
	 * @return result
	 */
	public abstract int checkIdDup(String id);

}
