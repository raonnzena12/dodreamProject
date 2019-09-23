package com.dodream.spring.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;

@Controller
public class ProjectController2 {
/// 주연씨
	
	@Autowired
	private ProjectService pService;
	
	@RequestMapping("detailSt.dr")
	public String prjDetailView(Integer pNo, Model model) {
		int pno = pNo;
		Project prj = pService.selectProject(pno);
		
		model.addAttribute("project", prj);
		return "project/projectDetailStory";
	}

}
