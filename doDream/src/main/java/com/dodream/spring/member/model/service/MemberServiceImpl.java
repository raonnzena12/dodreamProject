package com.dodream.spring.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.member.model.dao.MemberDao;
import com.dodream.spring.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;

	@Override
	public Member loginMember(Member mem) {
		return mDao.selectMember(mem);
	}

	@Override
	public int countVisitToday(int userNo) {
		return mDao.countVisitToday(userNo);
	}

	@Override
	public int checkVisitToday(int userNo) {
		return mDao.checkVisitToday(userNo);
	}
}
