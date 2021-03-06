package com.dodream.spring.admin.controller.reserve;

import java.util.ArrayList;
import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.project.model.vo.Project;
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
	
	// 성공한 프로젝트 결제용 컨트롤러
	@RequestMapping("adminRlist4.dr")
	public ModelAndView billingReserve(ModelAndView mv) {
		
		ArrayList<Project> pList = aService.selectProjectList5();
		
		System.out.println(pList);
		mv.setViewName("admin/reserve/reserveViewList4");
		mv.addObject("pList", pList);
		return mv;
  }
  
	// 프로젝트 별로 리저브 리스트 호출하기
	@ResponseBody
	@RequestMapping("selectReserveListTarget.dr")
	public ArrayList<Reserve> selectReserveListTarget(int pNo) {
		return aService.selectReserveListTarget(pNo);
	}
	
	@ResponseBody
	@RequestMapping("updateReserveStatus.dr")
	public int updateReserveStatus(String successparam, String failparam) {
		int result = 0;
		String[] success = {""};
		String[] fail = {""};
		System.out.println(failparam);
		
		if(successparam != null) {
			success = successparam.split(",");
			result += updateReserveStatusToSuccess(success);
		}
		if(failparam != null) {
			fail = failparam.split(",");
			result += updateReserveStatusToFail(fail);
		}
		return result;
	}
	
	
	// 리저브 결제 성공하면 상태값 바꿔주기
	public int updateReserveStatusToSuccess(String[] rNo) {
		return aService.updateReserveStatusToSuccess(rNo);
	}
	// 리저브 결제 실패하면 상태값 바꿔주기
	public int updateReserveStatusToFail(String[] rNo) {
		return aService.updateReserveStatusToFail(rNo);
	}
}
