package com.dodream.spring.member.model.service;

import com.dodream.spring.member.model.vo.Member;

public interface MemberService {

	/**
	 * 로그인을 위한 Service
	 * @param mem
	 * @return loginUser
	 */
	public abstract Member loginMember(Member mem);

}
