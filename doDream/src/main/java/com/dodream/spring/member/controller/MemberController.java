package com.dodream.spring.member.controller;

//import java.sql.Timestamp;
import java.util.List;

//import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
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
	public String memberLogin(Member member, Model model, String prevPage, HttpSession session, HttpServletResponse response) {

		Member loginUser = mService.loginMember(member);
		
		 System.out.println(member);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			model.addAttribute("loginUser", loginUser);

			System.out.println(loginUser);
			
			// 로그인 카운트 해주는 함수 호출;
			int result = mService.checkVisitToday(loginUser.getUserNo());
			if (result == 0) {
				result = mService.countVisitToday(loginUser.getUserNo());
				if (result > 0)
					System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}
						
			return "redirect:home.dr";
			
		}else {
			model.addAttribute("msg", "로그인 실패");
			return "common/errorPage";
		}
	}

	/**
	 * 로그인시 아이디와 비밀번호가 맞는지 확인하기 위한 Controller입니다. 모달창으로 실패메세지를 띄우기 위해 ajax로 작동합니다.
	 * 
	 * @param userEmail
	 * @param userPwd
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "checkValidate.dr", method = RequestMethod.POST)
	public int checkValidate(String userEmail, String userPwd) {
		Member member = new Member();
		member.setUserEmail(userEmail);
		member.setUserPwd(userPwd);
		return mService.checkValidate(member);
	}

	/**
	 * 모달창 로그인시 에러가 발생해서 새로 만들어서 해결한 Controller입니다.
	 * @param member
	 * @param model
	 * @param prevPage
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping(value = "loginmodal.dr", method = RequestMethod.POST)
	public String loginModal(Member member, Model model, String prevPage, HttpSession session,
			HttpServletResponse response) {
		Member loginUser = mService.loginMember(member);

		if (session.getAttribute("loginUser") != null) {
			session.removeAttribute("loginUser");
		}
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			model.addAttribute("loginUser", loginUser);
			System.out.println(loginUser);
			// 로그인 카운트 해주는 함수 호출;
			int result = mService.checkVisitToday(loginUser.getUserNo());
			if (result == 0) {
				result = mService.countVisitToday(loginUser.getUserNo());
				if (result > 0)
					System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}

			return "redirect:insertFundForm.dr";
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
		session.invalidate();
		return "redirect:home.dr";
	}

	/**
	 * 회원가입페이지 이동 Controller
	 * 
	 * @return 회원가입페이지
	 */
	@RequestMapping("insertForm.dr")
	public String insertMemberView() {
		return "member/insertMemberForm";
	}

	/**
	 * 회원가입
	 * 
	 * @param member
	 * @param model
	 * @return page
	 */
	@ResponseBody
	@RequestMapping("insertMember.dr")
	public String insertMember(Member member, Model model, RedirectAttributes rd, String prevPage) {
		int result = mService.insertMember(member);
		if (result > 0) {
			rd.addFlashAttribute("msg", "회원가입 완료!만나서 반갑습니다!");
			Member loginUser = mService.loginMember(member);
			model.addAttribute("loginUser", loginUser);

			int result2 = mService.countVisitToday(loginUser.getUserNo());

			if (result2 > 0) {
				System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}
			
			return "redirect:"+prevPage;
		}else {
			model.addAttribute("msg", "회원가입에 실패하였습니다.");
			return "common/errorPage";
		}
	}

	/**
	 * 비밀번호찾기 페이지 이동 Controller
	 * 
	 * @return 비밀번호찾기 페이지
	 */
	@RequestMapping("findPwd.dr")
	public String findPwd() {
		return "member/findPwdForm";
	}
	
	
	/** 비밀번호 변경페이지
	 * @param userEmail
	 * @param model
	 * @return
	 */
	@RequestMapping("changePwd.dr")
	public String changePwd(@RequestParam(value = "userEmail") String userEmail, Model model) {

		System.out.println(userEmail);
		model.addAttribute("userEmail", userEmail);
		return "member/changePwdForm";
	}

	/**
	 * 로그인 후 마이페이지 메뉴 레이어팝업
	 * 
	 * @return
	 */
	@RequestMapping("mypage.dr")
	public String mypage() {
		return "member/mypageHeader";
	}

	/**
	 * 회원가입 시 닉네임 중복 검사
	 * 
	 * @param userNickname
	 * @return result
	 */
	@ResponseBody
	@RequestMapping("checkNickname.dr")
	public String checkNickname(String userNickname) {

		String result = null;
		List<Member> mList = mService.checkNickname(userNickname);
		if (!mList.isEmpty()) {
			result = "1"; // 닉네임있음
		} else {
			result = "0";
		}
		return result;
	}

	/**
	 * 이메일 찾기
	 * 
	 * @param userEmail
	 * @return result
	 */
	@ResponseBody
	@RequestMapping("checkEmail.dr")
	public String checkEmail(@RequestParam(value = "userEmail") String userEmail) {
		List<Member> mList = mService.checkEmail(userEmail);

		String result = null;
		if (!mList.isEmpty()) {
			result = "1";
		} else {
			result = "0";
		}

		return result;
	}

	/**
	 * 내 정보 수정 페이지 이동
	 * 
	 * @return
	 */
	@RequestMapping("myInfo.dr")
	public String myInfoView() {
		return "member/mypageSetting";
	}

	/**
	 * 회원정보 수정
	 * 
	 * @param mem
	 * @param address
	 * @param detail
	 * @param postcode
	 * @param request
	 * @param model
	 * @param userProfileImage
	 * @param rd
	 * @return
	 */
	@RequestMapping("myInfoUpdate.dr")
	public String memberUpdate(Member mem, String address, String details, String postcode, HttpServletRequest request,
			Model model, MultipartFile uploadImg, RedirectAttributes rd) {

		mem.setUserAddress(address + "," + details + "," + postcode);

		int result = mService.updateMember(mem, request, uploadImg);

		if (result > 0) {
			model.addAttribute("loginUser", mem);
			rd.addFlashAttribute("msg", "회원정보를 수정하였습니다!");
			return "redirect:mypage.dr";
		} else {
			model.addAttribute("msg", "회원정보 수정에 실패하였습니다.");
			return "common/errorPage";
		}
	}

	/** 비밀번호 변경
	 * @param mem
	 * @param userEmail
	 * @param userPwd
	 * @param rd
	 * @return
	 */
	@RequestMapping("updatePwd.dr")
	public String pwdUpdate(Member mem, @RequestParam(value = "userEmail") String userEmail,
			@RequestParam(value = "userPwd") String userPwd, RedirectAttributes rd) {

		mem = new Member();

		mem.setUserEmail(userEmail);
		mem.setUserPwd(userPwd);

		System.out.println(mem);

		int result = mService.updatePwd(mem);
		System.out.println(result);
		if (result > 0) {
			rd.addFlashAttribute("msg", "비밀번호를 변경하였습니다. 로그인해주세요.");
			return "redirect:home.dr";
		} else {
			rd.addFlashAttribute("msg", "비밀번호 변경에 실패하였습니다.");
			return "common/errorPage";
		}

	}

	/** 회원탈퇴페이지
	 * @return
	 */
	@RequestMapping("deleteForm.dr")
	public String deleteMemberFormView() {
		return "member/deleteMemberView";
	}
	

	/** SNS로그인
	 * @param member
	 * @param userEmail
	 * @param userNickname
	 * @param userPwd
	 * @param userProfileImage
	 * @param model
	 * @param rd
	 * @param prevPage
	 * @return
	 */
	@RequestMapping("insertSNS.dr")
	public String insertSNS(Member member, String userEmail, String userNickname, String userPwd, String userProfileImage, Model model, RedirectAttributes rd, String prevPage){
		
		member.setUserEmail(userEmail);
		member.setUserPwd(userPwd);
		member.setUserNickname(userNickname+userPwd);
		member.setUserProfileImage(userProfileImage);
		
		int result = mService.insertSNS(member);
		
		if(result>0) {
			rd.addFlashAttribute("msg", "회원가입 완료!만나서 반갑습니다!");
			Member loginUser = mService.loginMember(member);
			model.addAttribute("loginUser", loginUser);
			
			int result2 = mService.countVisitToday(loginUser.getUserNo());

			if (result2 > 0) {
				System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}

			return "redirect:home.dr";
			
		}else {
			model.addAttribute("msg", "회원가입에 실패하였습니다.");
			return "common/errorPage";
		}
		
	}
	
	
	

}
