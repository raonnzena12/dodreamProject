package com.dodream.spring.admin.controller.alarm;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.admin.model.vo.Alarm;

@Controller
public class adminAlarmController {

	@Autowired
	private AdminService aService;
	
	//@RequestMapping("goAlarmList.dr")
	public ModelAndView goAlarmList(ModelAndView mv) {
		
		ArrayList<Alarm> list = aService.goAlarmList();
		
		if(list != null) {
			mv.setViewName("admin/alarm/alarmViewList");
		} else {
			mv.addObject("msg", "해당 리스트가 존재하지 않습니다.").setViewName("admin/alarm/alarmViewList");
		}
		return mv;
	}
	
	
	
}
