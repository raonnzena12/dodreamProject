package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.project.model.dao.ProjectDao2;
import com.dodream.spring.project.model.vo.Reward;

@Service("pService2")
public class ProjectServiceImpl2 implements ProjectService2{

	
	@Autowired
	private ProjectDao2 pDao2;

	@Override
	public ArrayList<Reward> selectReward(int pno) {
		
		return pDao2.selectReward(pno);
	}
	
	
}
