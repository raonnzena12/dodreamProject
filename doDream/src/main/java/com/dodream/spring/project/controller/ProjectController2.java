package com.dodream.spring.project.controller;



import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.service.ProjectService2;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reward;

@Controller
public class ProjectController2 {
/// 주연씨
	
	@Autowired
	private ProjectService pService;
	
	@Autowired
	private ProjectService2 pService2;
	
	
	/**
	 * 상세보기용
	 * @param pNo
	 * @param request
	 * @param model
	 * @param page
	 * @return
	 */
	@RequestMapping("detailSt.dr")
	public String prjDetailView(Integer pNo, Integer rNo, HttpServletRequest request, Like like,  Model model, Integer page) {
		int pno = pNo;
		int userNo = 0;
		
		
		if( request.getSession().getAttribute("loginUser") != null ) {
			userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
			
			System.out.println(pno+"///"+ userNo);
			
			like.setLikeNo(userNo);
			
		}
			like.setLikeNo(userNo);
			like.setLikePrNo(pno);
		Like lk = pService2.selectLike(like);
		
		Project prj = pService.selectProject(pno);
		
		ArrayList<Reward> rw = pService2.selectReward(pno);
		
		if(rNo != null) {
			int rno = rNo;
			System.out.println("detail : " + rno);
			model.addAttribute("subReward", rno);
		}else {
			int rno = 0;
			System.out.println("detail : " + rno);
			model.addAttribute("subReward", rno);
		}
		model.addAttribute("reward", rw);
		model.addAttribute("project", prj);
		model.addAttribute("like", lk);
		
		int currentPage = page == null ? 1 : page;
		
		if(currentPage == 1) {
			return "project/projectDetailStory";
		}else if(currentPage == 2){
			return "project/projectDetailReward";
		}else {
			return "project/projectDetailCommunity";
		}
		
	}
	
	/**
	 * 프로젝트 좋아요 등록
	 * @param userNo
	 * @param pNo
	 * @param like
	 * @param model
	 * @return
	 */
	@RequestMapping("detailLike.dr")
	@ResponseBody
	public String insertProjectLike( int userNo, int pNo, Like like, Model model) {
		
		System.out.println(userNo + "/" + pNo);
		
		like.setLikeNo(userNo);
		like.setLikePrNo(pNo);
		
		int result = pService2.insertProjectLike(like);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	/**
	 * 프로젝트 좋아요 취소
	 * @param userNo
	 * @param pNo
	 * @param like
	 * @param model
	 * @return
	 */
	@RequestMapping("detailLikeDelete.dr")
	@ResponseBody
	public String deleteLike(int userNo, int pNo, Like like, Model model) {
		
		System.out.println(userNo + "/" + pNo);
		
		like.setLikeNo(userNo);
		like.setLikePrNo(pNo);
		
		int result = pService2.deleteLike(like);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	@RequestMapping("detailSubReward.dr")
	public String detailSubReward(int rNo, int pNo, Model model) {
		System.out.println(rNo + "//////" + pNo);
		return "redirect:detailSt.dr?page=2&pNo="+pNo+"&rNo="+rNo;
	}
	

}
