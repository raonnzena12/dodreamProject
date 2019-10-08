package com.dodream.spring.project.model.service;

import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.project.model.dao.ProjectDao;
import com.dodream.spring.project.model.vo.FilteringList;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;

@Service("pService")
public class ProjectServiceImpl implements ProjectService {
	/// 공동사용
	
	@Autowired
	private ProjectDao pDao;

	@Override
	public Project selectProject(int pNo) {
		Project prj = pDao.selectProject(pNo);
		if ( prj != null ) { // 프로젝트가 성공적으로 조회되면 조회수를 1올린다
			pDao.updatePrjCount(pNo);
			
			int goal = prj.getpGoal();
			String comma_goal = String.format("%,d", goal);
			prj.setpCommaGoal(comma_goal);
		}
		return prj;
	}

	@Override
	public ArrayList<Project> selectPrjList(FilteringList filter, int currentPage) {
		
		// 진행중/진행완료 상태의 프로젝트 갯수 조회
		int listCount = pDao.countList();
		
		// 프로젝트 페이징 처리
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		// 목록 조회 후 리턴
		ArrayList<Project> pList = pDao.selectPrjList(filter, pi);
		return pList;
	}

	@Override
	public int createProject() {
		return pDao.createProject();
	}
	
	@Override
	public int selectThisProject() {
		return pDao.selectThisProject();
	}
	
	@Override
	public int insertReward(Reward reward) {
		return pDao.insertReward(reward);
	}

	@Override
	public int insertProject(Project project, HttpServletRequest request) {
		// 파일 저장 해야함
		return pDao.insertProject(project);
	}

	@Override
	public ArrayList<Reward> selectRewardList(String rewardStr) {
		String[] rewardTmp = rewardStr.split("/");
		ArrayList<String> rewardList = new ArrayList<>(Arrays.asList(rewardTmp));
		return pDao.selectRewardList(rewardList);
	}

	@Override
	public Project selectProjectS(int pNo) {
		return pDao.selecProjectS(pNo);
	}

	@Override
	public int insertLikeProject(Like like, int status) {
		int result = 0;
		if ( status == 1 ) {
			result = pDao.insertLikeProject(like);
		} else if ( status == 0 ) {
			result = pDao.deleteLikeProject(like);
		}
		return result;
	}

	@Override
	public ArrayList<Project> selectMainList(int userNo) {
		return pDao.selectMainList(userNo);
	}



}
