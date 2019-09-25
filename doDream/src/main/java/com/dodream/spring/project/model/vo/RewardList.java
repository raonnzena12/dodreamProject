package com.dodream.spring.project.model.vo;

import java.util.ArrayList;

/** 프로젝트 인서트폼에서 서로다른 다수의 리워드들을 담기 위한 객체입니다. 
 * @author SCH
 *
 */
public class RewardList {

	private ArrayList<Reward> rList;
	
	public RewardList() {}

	public RewardList(ArrayList<Reward> rList) {
		super();
		this.rList = rList;
	}

	public ArrayList<Reward> getrList() {
		return rList;
	}

	public void setrList(ArrayList<Reward> rList) {
		this.rList = rList;
	}

	@Override
	public String toString() {
		return "RewardList [rList=" + rList + "]";
	}
	
}
