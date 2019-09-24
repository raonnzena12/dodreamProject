package com.dodream.spring.member.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String memberLogin(Member member, Model model, String prevPage) {

		Member loginUser = mService.loginMember(member);

		if (loginUser != null) {
			model.addAttribute("loginUser", loginUser);
			System.out.println(loginUser);
			// 로그인 카운트 해주는 함수 호출;
			int result = mService.checkVisitToday(loginUser.getUserNo());
			if(result == 0) {
				result = mService.countVisitToday(loginUser.getUserNo());
				if(result > 0) 
				System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}
			return "redirect:"+prevPage;
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
	public String insertMemberView() {
		return "member/insertMemberForm";
	}
	
	/** 회원가입
	 * @param member
	 * @param model
	 * @return page
	 */
	@RequestMapping("insertMember.dr")
	public String insertMember(Member member, Model model, RedirectAttributes rd) {
		
		int result = mService.insertMember(member);
		if(result>0) {
			rd.addFlashAttribute("msg", "회원가입 완료!만나서 반갑습니다!");
			Member loginUser= mService.loginMember(member);
			model.addAttribute("loginUser", loginUser);
			int result2 = mService.countVisitToday(loginUser.getUserNo());
			if(result2 > 0) {
			System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}
			return "redirect:home.dr";
		}else {
			model.addAttribute("msg", "회원가입에 실패하였습니다.");
			return "common/errorPage";
		}
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
	
	/**
	 * 로그인 후 마이페이지 메뉴 레이어팝업
	 * @return
	 */
	@RequestMapping("mypage.dr")
	public String mypage() {
		return "member/mypageHeader";
	}
	
	/** 회원가입 시 닉네임 중복 검사
	 * @param userNickname
	 * @return
	 */
	@ResponseBody
	@RequestMapping("checkNickname.dr")
	public String checkNickname(String userNickname) {
		
		String result = null;
		List<Member> mList = mService.checkNickname(userNickname);
		if(!mList.isEmpty()) {
			result = "1"; //닉네임있음
		}else {
			result = "0";
		}
		return result;
	}
	
	@RequestMapping("myInfo.dr")
	public String myInfoView() {
		return "member/mypageSetting";
	}
	
}
