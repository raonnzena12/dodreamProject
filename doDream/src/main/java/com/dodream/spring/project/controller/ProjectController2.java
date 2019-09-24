package com.dodream.spring.project.controller;



import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.service.ProjectService2;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;

@Controller
public class ProjectController2 {
/// 주연씨
	
	@Autowired
	private ProjectService pService;
	
	@Autowired
	private ProjectService2 pService2;
	
	@RequestMapping("detailSt.dr")
	public String prjDetailView(Integer pNo, Model model) {
		int pno = pNo;
		Project prj = pService.selectProject(pno);
		
		ArrayList<Reward> rw = pService2.selectReward(pno);
		
		model.addAttribute("reward", rw);
		model.addAttribute("project", prj);
		
		return "project/projectDetailStory";
	}
	
	

}
