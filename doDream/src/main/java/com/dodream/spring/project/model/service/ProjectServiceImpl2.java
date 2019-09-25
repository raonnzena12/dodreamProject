package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.project.model.dao.ProjectDao2;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Reward;

@Service("pService2")
public class ProjectServiceImpl2 implements ProjectService2{

	
	@Autowired
	private ProjectDao2 pDao2;
	
	// 리워드 조회용 Service
	@Override
	public ArrayList<Reward> selectReward(int pno) {
		
		return pDao2.selectReward(pno);
	}

	// 프로젝트 좋아요 insert용 Service
	@Override
	public int insertProjectLike(Like like) {
		
		return pDao2.insertProjectLike(like);
	}
	
	//프로젝트 좋아요 select용 Service
	@Override
	public Like selectLike(Like like) {
		
		
		
		System.out.println(like);
		
		return pDao2.selectLike(like);
	}

	//프로젝트 좋아요 취소 Service
	@Override
	public int deleteLike(Like like) {
		
		return pDao2.deleteLike(like);
	}
	
	
}
