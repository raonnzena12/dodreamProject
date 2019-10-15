package com.dodream.spring.follow.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dodream.spring.follow.model.service.FollowService;
import com.dodream.spring.follow.model.vo.Follow;
import com.dodream.spring.member.model.service.MemberService;
import com.dodream.spring.member.model.vo.Member;

@Controller
public class FollowController {

	@Autowired
	private FollowService fService;
	@Autowired
	private MemberService mService;
	
	/**
	 * 나를 팔로잉한 사람 (나의 팔로워 리스트) count
	 * @param userNo
	 * @param model
	 * @return
	 */
	@ResponseBody
	@RequestMapping("countFollow.dr")
	public int countFollow(int userNo) {
		
		int result = fService.countFollw(userNo);
		System.out.println(result);
		if(result>0) {
			return result;
		}else {
			return 0;
		}
		
	}
	
	@ResponseBody
	@RequestMapping("countFollower.dr")
	public int countFollower(int userNo) {
		int result = fService.countFollower(userNo);
		System.out.println(result);
		if(result>0) {
			return result;
		}else {
			return 0;
		}
	}
	
	@RequestMapping("followList.dr")
	public String followList(int userNo, Model model) {
		
		List<Follow> followList = fService.selectFollowList(userNo);
		
		System.out.println(followList);
		
		if(followList !=null) {
						
			model.addAttribute("menu", 2);
			model.addAttribute("sub", 1);
			
			model.addAttribute("followList", followList);
			
			return "member/followList";
		}else {
			model.addAttribute("msg", "목록조회에 실패하였습니다.");
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("followerList.dr")
	public String followerList(int userNo, Model model) {
		
		List<Follow> followerList = fService.selectFollowerList(userNo);
		System.out.println(followerList);
		
		if(followerList !=null) {
			model.addAttribute("menu", 2);
			model.addAttribute("sub", 2);
			model.addAttribute("followerList", followerList);
			return "member/followerList";
		}else {
			model.addAttribute("msg", "목록조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}
	
	@ResponseBody
	@RequestMapping("unfollow.dr")
	public int unfollow(int followerNo, int followNo) {
		
		Follow follow = new Follow();
		follow.setFollowerNo(followerNo);
		follow.setFollowNo(followNo);
		
		System.out.println("followerNo"+followerNo);
		System.out.println("followNo"+followNo);
		
		int result = fService.deleteFollow(follow);
		
		System.out.println(result);
		return result;
	}
	
	@RequestMapping("socialfollowList.dr")
	public ModelAndView test(HttpServletRequest request, Integer userNo, Integer page, ModelAndView mv, RedirectAttributes rd) {
		
		Object loginUser = request.getSession().getAttribute("loginUser");
		if ( loginUser == null ) {
			rd.addFlashAttribute("msg", "로그인을 해주세요");
			mv.setViewName("redirect:main.dr");
			return mv;
		}
		
		
		int uNo = (userNo == null)? 0 : userNo;
		int pageNo = (page == null)? 1 : page;
		
		Member social = mService.socialSelect(uNo);
		if (social != null) {
			mv.addObject("social", social);
		} else {
			mv.addObject("msg", "목록 조회에 실패하였습니다.");
			mv.setViewName("common/errorPage");
			return mv;
		}
		
		if ( pageNo == 1 ) {
			List<Follow> followList = fService.selectFollowList(uNo);
			mv.addObject("menu", 2);
			mv.addObject("sub", 1);
			mv.addObject("followList", followList);
			mv.setViewName("member/followList");
		} else {
			List<Follow> followerList = fService.selectFollowerList(uNo);
			mv.addObject("menu", 2);
			mv.addObject("sub", 2);
			mv.addObject("followerList", followerList);
			mv.setViewName("member/followerList");
		}
		
		return mv;
	}
}
