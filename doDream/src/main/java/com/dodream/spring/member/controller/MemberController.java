package com.dodream.spring.member.controller;


import java.util.ArrayList;
import java.util.List;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dodream.spring.member.model.service.MemberService;
import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.report.model.vo.Report;

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
	@RequestMapping("login.dr")
	public String memberLogin(Member member, String prevPage, HttpSession session, HttpServletResponse response, RedirectAttributes ra, Model model) {

		Member loginUser = mService.loginMember(member);
		System.out.println("로그인전"+member);

		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			System.out.println("로그인후"+loginUser);
			
			// 로그인 카운트 해주는 함수 호출;
			int result = mService.checkVisitToday(loginUser.getUserNo());
			if (result == 0) {
				result = mService.countVisitToday(loginUser.getUserNo());
				if (result > 0)
					System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}
				
			System.out.println("redirect:"+prevPage);
			return "redirect:"+prevPage;
			
		}else {
			ra.addFlashAttribute("msg", "이메일과 비밀번호를 다시 확인해주세요.");
			System.out.println("redirect:"+prevPage);
			return "redirect:"+prevPage;
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
	public ModelAndView loginModal(Member member, ModelAndView mv, String prevPage, HttpSession session,
			HttpServletResponse response) {
		Member loginUser = mService.loginMember(member);

		if (session.getAttribute("loginUser") != null) {
			session.removeAttribute("loginUser");
		}
		if (loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			mv.addObject("loginUser", loginUser);
			mv.addObject("isDoneByModal", "true");
			System.out.println(loginUser);
			// 로그인 카운트 해주는 함수 호출;
			int result = mService.checkVisitToday(loginUser.getUserNo());
			if (result == 0) {
				result = mService.countVisitToday(loginUser.getUserNo());
				if (result > 0)
					System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
			}
			mv.setViewName("redirect:insertFundForm.dr");
			return mv;
		} else {
			mv.addObject("msg", "로그인 실패").setViewName("common/errorPage");
			return mv;
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
		return "redirect:main.dr";
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
	public String myInfoView(HttpServletRequest request, Model model) {
		model.addAttribute("loginUser",request.getSession().getAttribute("loginUser"));
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
			Model model, MultipartFile uploadImg, RedirectAttributes ra) {
		
		System.out.println("회원정보수정하기"+mem);
		mem.setUserAddress(address + "," + details + "," + postcode);
			
		int result = mService.updateMember(mem, request, uploadImg);
		System.out.println(result);
		if (result > 0) {
			ra.addFlashAttribute("msg", "회원정보를 수정하였습니다!");
			request.getSession().setAttribute("loginUser", mem);
//			model.addAttribute("loginUser", mem);
			return "redirect:myInfo.dr";
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
	
	
	/** 회원이 오픈한 프로젝트 건수
	 * @param userNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping("countOpenPJT.dr")
	public int countOpenProject(int userNo) {
		
		System.out.println(userNo);
		
		int result = mService.countOpenProject(userNo);
		System.out.println("countOpenProject"+result);
		
		if(result > 0) {
			return result;
		}else {
			return 0;
		}
	}
	
	/** 회원이 참여한 프로젝트 중 결제 대기 건수
	 * @param userNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping("projectJoinCount.dr")
	public int projectJoinCount(int userNo) {
		System.out.println(userNo);
		
		int result = mService.projectJoinCount(userNo);
		System.out.println("projectJoinCount"+result);
		
		if(result>0) {
			return result;
		}else {
			return 0;
		}
	}
	
	/** 완료된 프로젝트 갯수
	 * @param userNo
	 * @return
	 */
	@ResponseBody
	@RequestMapping("projectCloseCount.dr")
	public int projectCloseCount(int userNo) {
		System.out.println(userNo);
		
		int result = mService.projectCloseCount(userNo);
		System.out.println("projectCloseCount"+result);
		
		if(result>0) {
			return result;
		}else {
			return 0;
		}
	}
	

	/** 회원탈퇴페이지
	 * @return
	 */
	@RequestMapping("deleteForm.dr")
	public String deleteMemberFormView(int userNo, Model model) {
		
		return "member/deleteMemberView";
	}
	
	/** 회원탈퇴
	 * @param userNo
	 * @param status
	 * @param rdAttr
	 * @param model
	 * @return
	 */
	@RequestMapping("deleteMember.dr")
	public String deleteMember(int userNo, SessionStatus status, RedirectAttributes rdAttr, Model model) {

		int result = mService.deleteMember(userNo);
		if(result > 0) {
			rdAttr.addFlashAttribute("msg", "두드림에서 탈퇴되었습니다.");
			status.setComplete();
			return "redirect:home.dr";
		}else {
			model.addAttribute("msg", "탈퇴에 실패하였습니다. 관리자에게 문의해주세요.");
			return "common/errorPage";
		}
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

			return "redirect:"+prevPage;
			
		}else {
			model.addAttribute("msg", "회원가입에 실패하였습니다.");
			return "common/errorPage";
		}
		
	}
	
	/** 회원이 참여한 프로젝트 리스트 조회
	 * @param userNo
	 * @param mv
	 * @return mv
	 */
	@RequestMapping("myFundingList.dr")
	public ModelAndView myFundingList(int userNo, ModelAndView mv) {

		ArrayList<Project> pList = mService.myFundingList(userNo);

		System.out.println("myFundingList"+pList);

		if (pList != null) {
			mv.addObject("menu",1);
			mv.addObject("sub",1);
			mv.addObject("pList", pList);
			mv.setViewName("member/myFundingList");
		} else {
			mv.addObject("msg", "목록 조회에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}

		return mv;
	}
	
	/** 회원이 오픈한 프로젝트 리스트 조회
	 * @param userNo
	 * @param mv
	 * @return
	 */
	@RequestMapping("myOpenProjectList.dr")
	public ModelAndView myOpenProjectList(int userNo, ModelAndView mv) {
		
		ArrayList<Project> pList = mService.myOpenProjectList(userNo);
		System.out.println(pList);
		
		if(pList != null) {
			mv.addObject("menu",1);
			mv.addObject("sub",2);
			mv.addObject("pList", pList);
			mv.setViewName("member/myOpenProjectList");
		} else {
			mv.addObject("msg", "목록 조회에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}

		return mv;
		
	}
	
	/** 회원이 좋아요한 프로젝트 조회
	 * @param userNo
	 * @param mv
	 * @return
	 */
	@RequestMapping("myLikePRJList.dr")
	public ModelAndView myLikePRJList(int userNo, ModelAndView mv) {
		
		ArrayList<Project> pList = mService.myLikePRJList(userNo);
		System.out.println(pList);
		
		if(pList != null) {
			mv.addObject("menu",1);
			mv.addObject("sub",3);
			mv.addObject("pList", pList);
			mv.setViewName("member/myLikePRJList");
		} else {
			mv.addObject("msg", "목록 조회에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}

		return mv;
		
	}
	
	@RequestMapping("myReportList.dr")
	public ModelAndView myReportList(int userNo, ModelAndView mv) {
		
		ArrayList<Report> rList = mService.myReportList(userNo);
		System.out.println(rList);
		
		if(rList != null) {
			mv.addObject("menu",3);
			mv.addObject("rList", rList);
			mv.setViewName("member/myReportList");
		}else {
			mv.addObject("msg", "목록 조회에 실패하였습니다.");
			mv.setViewName("common/errorPage");
		}
		
		return mv;
	}
	
	/*
	 * @RequestMapping("social.dr") public ModelAndView socialSelect(int pWriter,
	 * ModelAndView mv) {
	 * 
	 * ArrayList<Member> social = mService.socialSelect(pWriter);
	 * System.out.println(social);
	 * 
	 * if(social != null) { mv.addObject("social", social);
	 * mv.setViewName("member/SocialHeader"); }else { mv.addObject("msg",
	 * "목록 조회에 실패하였습니다."); mv.setViewName("common/errorPage"); }
	 * 
	 * return mv; }
	 */
	
	/**
	 * 네이버 이메일로 로그인하는 Controller
	 * @param email
	 * @param nickName
	 * @param profileImg
	 * @param model
	 */
	@RequestMapping("naverSNSLogin.dr")
	public String naverSNSlogin(Member member, String prevPage, Model model) {
		
		Member loginUser = mService.naverLogin(member.getUserEmail());
		
		if ( loginUser == null ) {
			int result = mService.insertSNS(member);
			if ( result > 0 ) {
				loginUser = member;
			}
		}
		model.addAttribute("loginUser", loginUser);
		
		int result = mService.checkVisitToday(loginUser.getUserNo());
		if (result == 0) {
			result = mService.countVisitToday(loginUser.getUserNo());
			if (result > 0)
				System.out.println("userNo : " + loginUser.getUserNo() + "번 회원이 DAYCOUNT 테이블에 삽입됨");
		}
		
		return "redirect:"+prevPage;
	}
	

	
	
}
