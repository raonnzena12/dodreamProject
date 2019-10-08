package com.dodream.spring.reserve.controller;

import java.util.ArrayList;

import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.reserve.model.service.ReserveService;
import com.dodream.spring.reserve.model.vo.History;
import com.dodream.spring.reserve.model.vo.HistoryList;
import com.dodream.spring.reserve.model.vo.Reserve;

@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService rsvService;
	@Autowired
	private ProjectService pService;
	
	// 펀딩 현황 확인용 임시 매핑
	@RequestMapping("myFundingInfo.dr")
	public String tmp3(Integer rsvNo, HttpServletRequest request, Model model) {
		int uNo = 0;
		
		if ( request.getSession().getAttribute("loginUser") != null ) {
			uNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
		}
		Reserve rsv = rsvService.selectReserve(rsvNo.intValue());
		
		// uNo 검사
		if ( uNo != rsv.getResUser() ) {
			return "redirect:home.dr";
			// 자신의 예약조회가 아닐경우 홈으로 넘김
		}
		
		Project prj = pService.selectProjectS(rsv.getResRefPno());
		ArrayList<Reward> rList = rsvService.selectRewardList(rsvNo);
		model.addAttribute("prj", prj);
		model.addAttribute("rsv", rsv);
		model.addAttribute("rList", rList);
		
		return "project/fundingStatus";
	}
	
	@ResponseBody
	@RequestMapping("ajaxAddressChange.dr")
	public int ajaxAddressChange(Reserve reserve) {
		
		int result = rsvService.updateReserveAddress(reserve);
		return result;
	}
	
	// 펀딩 결제 성공 확인용 매핑
	@RequestMapping("thankYou.dr")
	public String tmp2(Reserve reserve, HistoryList hList, Model model) {
		int result = 0, result2 = 0, resNo = 0;
		System.out.println(reserve);
		System.out.println(hList);
		// 예약테이블 PK번호를 하나 받아옴
		resNo = rsvService.selectResNo();
		// 예약테이블 PK번호를 예약용 객체에 셋팅
		reserve.setResNo(resNo);
		// 예약정보 Insert 시도
		result = rsvService.insertReserve(reserve);
		if ( result > 0 ) { // 예약정보 Insert 성공 시 History 테이블 Insert
			 result2 = rsvService.insertHistory(hList, resNo);
		}
//		result2 = 1;
//		resNo = 11;
//		reserve.setResRefPno(127);
		
		if ( result2 > 0 ) { // History 테이블 Insert 성공 시 성공 VIew로
			model.addAttribute("resNo", resNo);
			model.addAttribute("prj", pService.selectProjectS(reserve.getResRefPno()));
			return "project/fundingComplete";
		} else {
			model.addAttribute("msg", "펀딩 결제 실패");
			return "common/errorPage";
		}
	}
	
	// 예약 취소하는 ajax 메서드
	@ResponseBody
	@RequestMapping("ajaxCancelFunding.dr")
	public int cancelFunding(Integer rsvNo) {
//		int result = 1;
		int result = rsvService.updateFundingStatus(rsvNo.intValue());
		return result;
	}
	
	// 펀딩 결제창 확인용 임시 매핑
	@RequestMapping("letsFunding.dr")
	public String tmp(Integer pNo, String rNo, Integer addReward, String select, String input, String count, Model model) {
		
		ArrayList<History> hList = rsvService.assembleHistory(rNo, select, input, count);
		Project prj = pService.selectProjectS(pNo.intValue());
		ArrayList<Reward> rList = pService.selectRewardList(rNo);
		
		model.addAttribute("rList", rList);
		model.addAttribute("prj", prj);
		model.addAttribute("hList", hList);
		model.addAttribute("additionalCost", addReward);
		
		return "project/fundingInfo";
	}
	
	@ResponseBody
	@RequestMapping("ajaxChangeCredit.dr")
	public int ajaxChangeCredit(Integer rsvNo, String customerUid) {
		int result = rsvService.updateReserveCredit(new Reserve(rsvNo, customerUid));
		return result;
	}
	
	@RequestMapping("myReserveList.dr")
	public String fundListView(HttpServletRequest request, Model model) {
		int userNo = 0;
		Object loginUser = request.getSession().getAttribute("loginUser");
		if ( loginUser != null ) {
			userNo = ((Member)loginUser).getUserNo();
		}
		userNo = 17;
		ArrayList<Reserve> rList = rsvService.selectReserveList(userNo);
		model.addAttribute("rList", rList);
		System.out.println(rList);
		return "member/myReserveList";
	}
}
