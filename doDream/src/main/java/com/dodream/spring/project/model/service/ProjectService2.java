package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Reward;

public interface ProjectService2 {

	/**
	 * 리워드 불러오기
	 * @param pno
	 * @return
	 */
	ArrayList<Reward> selectReward(int pno);

	/**
	 * 프로젝트 좋아요 insert
	 * @param userNo
	 * @param pNo
	 * @return result
	 */
	int insertProjectLike(Like like);

}
