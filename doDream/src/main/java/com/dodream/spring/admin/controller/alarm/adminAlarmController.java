package com.dodream.spring.admin.controller.alarm;

import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.admin.model.vo.Alarm;

@Controller
public class adminAlarmController {

	@Autowired
	private AdminService aService;
	
	@RequestMapping("goAlarmList.dr")
	public ModelAndView goAlarmList(ModelAndView mv) {
		
		ArrayList<Alarm> list = aService.goAlarmList();
		
		if(list != null) {
			mv.addObject("list",list).setViewName("admin/alarm/alarmViewList");
		} else {
			mv.addObject("msg", "해당 리스트가 존재하지 않습니다.").setViewName("admin/alarm/alarmViewList");
		}
		return mv;
	}
	
	@RequestMapping("topAlarmList.dr")
	public ModelAndView topAlarmList(ModelAndView mv) {
		
		ArrayList<Alarm> list = aService.goAlarmList();
		
		if(list != null) {
			mv.addObject("list",list).setViewName("admin/common/topbar");
		} else {
			mv.addObject("msg", "해당 리스트가 존재하지 않습니다.").setViewName("admin/alarm/alarmViewList");
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("getAlarmCount.dr")
	public String[] getAlarmCount() {
		String[] str = new String[3];
		str[0] = aService.getAlarmCount1();
		str[1] = aService.getAlarmCount2();
		str[2] = aService.getAlarmCount3();
		return str;
	}
	
	// 전체 알람 개수 구하기 
	@ResponseBody
	@RequestMapping("allCountAlarm.dr")
	public int allCountAlarm() {
		return aService.allCountAlarm();
	}
	
	@RequestMapping("confirmAlarm.dr")
	public String confirmAlarm(String[] arr) {
		for (int i = 0; i < arr.length-1; i++) {
			int result = aService.confirmAlarm(Integer.parseInt(arr[i]));
		}
		return "redirect:goAlarmList.dr";
	}
	
	
	
	
}
