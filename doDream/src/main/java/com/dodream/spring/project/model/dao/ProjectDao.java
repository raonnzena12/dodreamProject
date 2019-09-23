package com.dodream.spring.project.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.project.model.vo.Project;


@Repository("pDao")
public class ProjectDao {
	/// 공동사용
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * pNo로 프로젝트 1개를 로드하는 DAO
	 * @param pNo
	 * @return prj
	 */
	public Project selectProject(int pNo) {
		return sqlSession.selectOne("projectMapper.selectProject", pNo);
	}
}
