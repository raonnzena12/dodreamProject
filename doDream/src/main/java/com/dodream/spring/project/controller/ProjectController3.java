package com.dodream.spring.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController3 {
///황선희
	
	@RequestMapping("category.dr")
	public String fundListView() {
		return "common/fundList";
	}
}
