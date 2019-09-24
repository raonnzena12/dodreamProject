package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import com.dodream.spring.project.model.vo.Reward;

public interface ProjectService2 {

	/**
	 * 리워드 불러오기
	 * @param pno
	 * @return
	 */
	ArrayList<Reward> selectReward(int pno);

}
