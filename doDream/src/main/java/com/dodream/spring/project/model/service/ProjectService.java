package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;

public interface ProjectService {
/// 공동사용

	/**
	 * ProejctNumber로 프로젝트 1개를 로드하는 Service
	 * @param pNo
	 * @return prj
	 */
	public abstract Project selectProject(int pNo);

	/**
	 * filter로 프로젝트 리스트를 로드하는 Service
	 * @param filter
	 * @param currentPage 
	 * @return pList
	 */
	public abstract ArrayList<Project> selectPrjList(FilteringList filter, int currentPage);

	/**
	 * 펀딩 등록페이지로 넘어가기 전에 프로젝트를 생성해주는 Service입니다.
	 * @return pNo
	 */
	public abstract int createProject();
	
	/** 위에서 생성된 프로젝트 번호를 가져오는 Service
	 * @return pNo
	 */
	public abstract int selectThisProject();
	
	/**
	 * 리워드를 DB에 저장시키기 위한 Service입니다.
	 * @param reward
	 * @return result
	 */
	public abstract int insertReward(Reward reward);

	/**
	 * 프로젝트를 DB에 저장시키기 위한 Service입니다.
	 * @param project
	 * @param request
	 * @return result;
	 */
	public abstract int insertProject(Project project, MultipartFile uploadfile1, MultipartFile uploadfile2, MultipartFile uploadfile3, HttpServletRequest request);

	/**
	 * 리워드 번호 스트링으로 해당하는 리워드 리스트를 반환하는 Service
	 * (스트링 복수개일 경우 '/'(슬래쉬)로 구분하여 보낼 것)
	 * @param rewardStr
	 * @return rList
	 */
	public abstract ArrayList<Reward> selectRewardList(String rewardStr);

	/**
	 * 조회수 증감없이 프로젝트 조회하는 Service
	 * @param resRefPno
	 * @return prj
	 */
	public abstract Project selectProjectS(int pNo);

	/**
	 * 리스트에서 좋아요 누르는 Service
	 * status 1 : 좋아요 / status 0 : 좋아요 취소
	 * @param like
	 * @param status
	 * @return result
	 */
	public abstract int insertLikeProject(Like like, int status);

	/**
	 * 메인 출력에 필요한 리스트들
	 * (인기순, 최신등록순, 마감임박순) 받아오는 Service
	 * @param userNo
	 * @return allList
	 */
	public abstract ArrayList<Project> selectMainList(int userNo);

	/**
	 * 자신이 오픈한 프로젝트 리스트 반환하는 Service
	 * @param filteringList
	 * @return pList
	 */
	public abstract ArrayList<Project> selectOpenPrjList(FilteringList filteringList);

	/**
	 * 프로젝트 번호로 딸린 리워드 리스트를 반환하는 Service
	 * @param pno
	 * @return rList
	 */
	public abstract ArrayList<Reward> selectPrjRwdList(int pno);


}
