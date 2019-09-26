package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.dodream.spring.common.Pagination;
import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.project.model.dao.ProjectDao;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.project.model.vo.RewardList;

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
			
			System.out.println(prj);
		}
		
		
		
		return prj;
	}

	@Override
	public ArrayList<Project> selectPrjList(String category, int currentPage) {
		
		// 진행중/진행완료 상태의 프로젝트 갯수 조회
		int listCount = pDao.countList();
		
		// 프로젝트 페이징 처리
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		// 목록 조회 후 리턴
		ArrayList<Project> pList = pDao.selectPrjList(category, pi);
		return pList;
	}

	@Override
	public int createProjectNumber() {
		return pDao.createProjectNumber();
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
}
