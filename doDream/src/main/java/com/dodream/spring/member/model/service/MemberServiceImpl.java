package com.dodream.spring.member.model.service;

import java.util.List;

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
	public List<Member> checkEmail(String userEmail) {
		
		return mDao.selectCheckEmail(userEmail);
	}
}
