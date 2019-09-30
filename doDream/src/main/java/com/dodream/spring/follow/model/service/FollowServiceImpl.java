package com.dodream.spring.follow.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.follow.model.dao.FollowDao;
import com.dodream.spring.follow.model.vo.Follow;

@Service("fService")
public class FollowServiceImpl implements FollowService{

	@Autowired
	private FollowDao fDao;

	@Override
	public int countFollw(int userNo) {
		return fDao.countFollow(userNo);
	}

	@Override
	public int countFollower(int userNo) {
		
		return fDao.countFollower(userNo);
	}

	@Override
	public List<Follow> selectFollowList(int userNo) {
		
		return fDao.selectFollowList(userNo);
	}

	@Override
	public List<Follow> selectFollowerList(int userNo) {
		
		return fDao.selectFollowerList(userNo);
	}
	
	
}
