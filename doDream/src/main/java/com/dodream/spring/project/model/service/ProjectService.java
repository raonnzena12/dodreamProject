package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.RewardList;

public interface ProjectService {
/// 공동사용

	/**
	 * ProejctNumber로 프로젝트 1개를 로드하는 Service
	 * @param pNo
	 * @return prj
	 */
	public abstract Project selectProject(int pNo);

	/**
	 * category로 프로젝트 리스트를 로드하는 Service
	 * @param category
	 * @param currentPage 
	 * @return pList
	 */
	public abstract ArrayList<Project> selectPrjList(String category, int currentPage);

	/**
	 * 펀딩 등록페이지로 넘어가기 전에 프로젝트번호를 생성해주는 Service입니다.
	 * @return pNo
	 */
	public abstract int createProjectNumber();

	/**
	 * 프로젝트 등록을 수행해주는 Service입니다.
	 * @param project
	 * @param rList
	 * @param uploadfile1
	 * @param uploadfile2
	 * @return result
	 */
	public abstract int insertProject(Project project, RewardList rList, MultipartFile uploadfile1,
			MultipartFile uploadfile2);


}
