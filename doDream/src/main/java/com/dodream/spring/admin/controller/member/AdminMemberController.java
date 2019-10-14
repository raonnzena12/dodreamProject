package com.dodream.spring.admin.controller.member;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.dodream.spring.admin.model.service.AdminService;
import com.dodream.spring.common.AdminPagination;
import com.dodream.spring.member.model.vo.Member;

@SessionAttributes({ "loginUser", "msg" })
@Controller
public class AdminMemberController {
	
	@Autowired
	private AdminService aService;

	// 회원 전체 목록 보여주기
	@RequestMapping("adminMlist.dr")
	public ModelAndView selectMemberList(ModelAndView mv, Integer page) {
		
		// 회원 목록 조회
		ArrayList<Member> list = aService.selectMemberList(); 
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/member/memberViewList");
		} else {
			mv.addObject("msg","등록된 회원이 없습니다.").
			setViewName("admin/member/memberViewList");	
		}
		return mv;
	}
	
	// 블랙리스트 목록 보여주기
	@RequestMapping("adminBlist.dr")
	public ModelAndView selectBlackList(ModelAndView mv, Integer page) {
		
		// 회원 목록 조회
		ArrayList<Member> list = aService.selectBlackList(); 
		
		if(list != null) {
			mv.addObject("list", list).
			setViewName("admin/member/memberBlackList");
		} else {
			mv.addObject("msg","등록된 회원이 없습니다.").
			setViewName("admin/member/memberBlackList");	
		}
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("adminCountNewMember.dr")
	public int countNewMember() {
		return aService.countNewMember();
	}
	
	@ResponseBody
	@RequestMapping("adminCountLeaveMember.dr")
	public int countLeaveMember() {
		return aService.countLeaveMember();
	}
	
	@ResponseBody
	@RequestMapping("adminCountBlackListMember.dr")
	public int countBlackListMember() {
		return aService.countBlackListMember();
	}
	
	// 방문자수 관련 메소드
	@ResponseBody
	@RequestMapping("countVisit.dr")
	public ArrayList<Integer> countVisit() {
		return aService.countVisit();
	}
	
	// 방문자수 관련 메소드
	@ResponseBody
	@RequestMapping("countToday.dr")
	public int countToday() {
		return aService.countToday();
	}
	
	// 일반회원 -> 블랙리스트 처리
	@RequestMapping("blackListBtn.dr")
	public String goBlackList(int userNo) {
		
		int result = aService.goBlackList(userNo);
		 
		if(result > 0) {
			return "redirect:adminMlist.dr"; 
		} else {
			return "redirect:adminMlist.dr";
		}
		
	}
	
	// 블랙리스트-> 일반회원 처리
	@RequestMapping("returnUser.dr")
	public String goReturnUser(int userNo) {
		
		int result = aService.goReturnuser(userNo);
		
		if(result > 0) {
			return "redirect:adminBlist.dr"; 
		} else {
			return "redirect:adminBlist.dr";
		}
		
	}
	
}
