package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import com.dodream.spring.project.model.vo.Project;

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


}
