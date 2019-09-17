package com.dodream.spring.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.dodream.spring.member.model.service.MemberService;
import com.dodream.spring.member.model.vo.Member;

@SessionAttributes({ "loginUser", "msg" })
@Controller
public class MemberController {

	@Autowired
	private MemberService mService;

	/**
	 * 로그인 Controller
	 * 
	 * @param member
	 * @param model
	 * @return page
	 */
	@RequestMapping(value = "login.dr", method = RequestMethod.POST)
	public String memberLogin(Member member, Model model) {

		Member loginUser = mService.loginMember(member);

		if (loginUser != null) {
			model.addAttribute("loginUser", loginUser);
			return "redirect:home.dr";
		} else {
			model.addAttribute("msg", "로그인 실패");
			return "common/errorPage";
		}
	}
  
 	/**
	 * 로그아웃 Controller
	 * 
	 * @param status
	 * @param session
	 * @return page
	 */
	@RequestMapping("logout.dr")
	public String memberLogout(SessionStatus status, HttpSession session) {
		status.setComplete();
		return "redirect:home.dr";
	}
	
	/**
	 * 회원가입페이지 이동 Controller
	 * @return 회원가입페이지
	 */
	@RequestMapping("insertForm.dr")
	public String insertMember() {
		return "member/insertMemberForm";
	}
	
	/**
	 * 비밀번호찾기 페이지 이동 Controller
	 * @return 비밀번호찾기 페이지
	 */
	@RequestMapping("findPwd.dr")
	public String findPwd() {
		return "member/findPwdForm";
	}
	
	@RequestMapping("changePwd.dr")
	public String changePwd() {
		return "member/changePwdForm";
	}

}
