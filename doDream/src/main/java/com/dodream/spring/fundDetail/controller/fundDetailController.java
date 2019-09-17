package com.dodream.spring.fundDetail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class fundDetailController {
	
	@RequestMapping("category.dr")
	public String fundListView() {
		return "fundDetail/fundList";
	}
}
