package com.dodream.spring.follow.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.follow.model.service.FollowService;
import com.dodream.spring.follow.model.vo.Follow;

@Controller
public class FollowController {

	@Autowired
	private FollowService fService;
	
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
			model.addAttribute("followerList", followerList);
			return "member/followerList";
		}else {
			model.addAttribute("msg", "목록조회에 실패하였습니다.");
			return "common/errorPage";
		}
	}
	
}
