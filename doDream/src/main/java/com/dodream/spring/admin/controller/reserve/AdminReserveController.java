package com.dodream.spring.admin.controller.reserve;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.reserve.model.vo.Reserve;


@Controller
public class AdminReserveController {

	@Autowired
	private AdminService aService;
	
	@ResponseBody
	@RequestMapping("adminCountReserve1.dr")
	public int countReserve1(){
		return aService.countReserve1();
	}
	
	@ResponseBody
	@RequestMapping("adminCountReserve2.dr")
	public int countReserve2(){
		return aService.countReserve2();
	}
	
	@ResponseBody
	@RequestMapping("adminCountReserve3.dr")
	public int countReserve3(){
		return aService.countReserve3();
	}
	
	// 주문 예약 현황 
	@RequestMapping("adminRlist1.dr")
	public ModelAndView selectResultList1(ModelAndView mv) {
		
		ArrayList<Reserve> list = aService.selectReserveList1();
		 
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/reserve/reserveViewList1");
		} else {
			mv.addObject("msg", "주문 예약이 없습니다.").
			setViewName("admin/reserve/reserveViewList1");
		} 
		return mv;
	}
	
	// 결제 현황 
	@RequestMapping("adminRlist2.dr")
	public ModelAndView selectReserveList2(ModelAndView mv) {
		
		ArrayList<Reserve> list = aService.selectReserveList2();
		 
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/reserve/reserveViewList2");
		} else {
			mv.addObject("msg", "주문 예약이 없습니다.").
			setViewName("admin/reserve/reserveViewList2");
		}
		
		return mv;
	}
	
	// 주문 취소 현황 
	@RequestMapping("adminRlist3.dr")
	public ModelAndView selectReserveList3(ModelAndView mv) {
		
		ArrayList<Reserve> list = aService.selectReserveList3();
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/reserve/reserveViewList3");
		} else {
			mv.addObject("msg", "주문 예약이 없습니다.").
			setViewName("admin/reserve/reserveViewList3");
		}
		
		return mv;
	}
	
	// 주문 예약 취소 
	@RequestMapping("cancelReserve.dr")
	public ModelAndView cancelReserve(ModelAndView mv, int resNo) {
		
		int result = aService.cancelReserve(resNo);
		
		if(result > 0) {
			mv.setViewName("redirect:adminRlist1.dr");
		} else {
			mv.addObject("msg", "취소할 예약건이 존재하지 않습니다.").setViewName("redirect:adminRlist1.dr");
		}
		
		return mv;
	}
	
	
	
	
	
}
