package com.dodream.spring.follow.model.service;

import java.util.List;

import com.dodream.spring.follow.model.vo.Follow;

public interface FollowService {

	public abstract int countFollw(int userNo);

	public abstract int countFollower(int userNo);

	public abstract List<Follow> selectFollowList(int userNo);

	public abstract List<Follow> selectFollowerList(int userNo);

	public abstract int deleteFollow(Follow follow);



}
