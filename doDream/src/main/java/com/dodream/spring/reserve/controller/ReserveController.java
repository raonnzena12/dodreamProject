package com.dodream.spring.reserve.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.service.ReserveService;
import com.dodream.spring.reserve.model.vo.Reserve;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService rsvService;
	@Autowired
	private ProjectService pService;
	
	// 펀딩 현황 확인용 임시 매핑
	@RequestMapping("temp3.dr")
	public String tmp3(Model model) {
		
		int pNo = 54;
		int uNo = 25;
		int rsvNo = 3;
		
		// uNo 검사
		
		Project prj = pService.selectProject(pNo);
		Reserve rsv = rsvService.selectReserve(rsvNo);
		ArrayList<Reward> rList = rsvService.selectRewardList(rsvNo);
		model.addAttribute("prj", prj);
		model.addAttribute("rsv", rsv);
		model.addAttribute("rList", rList);
		
		return "project/fundingStatus";
	}
	
	@ResponseBody
	@RequestMapping("ajaxAddressChange.dr")
	public String ajaxAddressChange(Reserve reserve) {
		
		System.out.println(reserve);
		
		return "1";
	}
}
