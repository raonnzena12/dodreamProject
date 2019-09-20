package com.dodream.spring.project.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.project.model.dao.ProjectDao;

@Service("pService")
public class ProjectServiceImpl implements ProjectService {
	/// 창혁씨
	
	@Autowired
	private ProjectDao pDao;
}
