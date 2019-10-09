package com.dodream.spring.project.controller;



import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dodream.spring.member.model.vo.Member;
import com.dodream.spring.project.model.service.ProjectService;
import com.dodream.spring.project.model.service.ProjectService2;
import com.dodream.spring.project.model.vo.DetailFollow;
import com.dodream.spring.project.model.vo.DetailReport;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Project;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.project.model.vo.SubReply;


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
	public String prjDetailView(Integer pNo, Integer rNo, DetailFollow follow, DetailReport report, HttpServletRequest request, Like like,  Model model, Integer page) {
		int pno = pNo;
		int userNo = 0;
		
		
		if( request.getSession().getAttribute("loginUser") != null ) {
			userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
			
			System.out.println(pno+"///"+ userNo);
			
			like.setLikeNo(userNo);
			follow.setFollowerNo(userNo);
			report.setRepWriter(userNo);
			
		}
			like.setLikeNo(userNo);
			like.setLikePrNo(pno);
		Like lk = pService2.selectLike(like);// 프로젝트 좋아요 조회
		
		Project prj = pService.selectProject(pno);
		
		follow.setFollowNo(prj.getpWriter());
		
		DetailFollow df = pService2.selectFollow(follow);// 팔로워 조회
		
		System.out.println("df : " + df);
		
		report.setRepRefPno(pno);
		
		DetailReport dr = pService2.selectReport(report);
		
		System.out.println("report : " + dr);
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
		model.addAttribute("report", dr);
		model.addAttribute("follow", df);
		model.addAttribute("reward", rw);
		model.addAttribute("project", prj);
		model.addAttribute("like", lk);
		
		int currentPage = page == null ? 1 : page;
		
		if(currentPage == 1) {
			return "project/projectDetailStory";
		}else if(currentPage == 2){
			return "project/projectDetailReward";
		}else if(currentPage == 3) {
			return "project/projectDetailCommunity";
		}else {
			return "project/projectDetailGuide";
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
	
	
	//aside리워드
	@RequestMapping("detailSubReward.dr")
	public String detailSubReward(int rNo, int pNo, Model model) {
		System.out.println(rNo + "//////" + pNo);
		return "redirect:detailSt.dr?page=2&pNo="+pNo+"&rNo="+rNo;
	}
	
	//댓글 등록
	@ResponseBody
	@RequestMapping("detailReply.dr")
	public String insertReply(Reply reply, HttpServletRequest request) {
		
		int userNo= 0;
		if( request.getSession().getAttribute("loginUser") != null ) {
			userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
			
			reply.setReWriNo(userNo);
		}
		
		
		System.out.println(reply);
		int result = pService2.insertReply(reply);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
		
		
	}
	
	
	//댓글 리스트
	@ResponseBody
	@RequestMapping(value="replyList.dr", produces="application/json; charset=UTF-8")
	public HashMap<String, Object> selectReply(int pNo, Reply reply, SubReply subre) {
		
		ArrayList<Reply> reList = pService2.selectReply(pNo);
		
		ArrayList<SubReply> srList = pService2.selectSubReply(reList);
		
		HashMap<String, Object> map = new HashMap<>();
		
		
		System.out.println(reList);
		map.put("reList", reList);
		map.put("srList", srList);
		
		
		return map;
	}
	
	//대댓글 등록
	@ResponseBody
	@RequestMapping("insertSubRe.dr")
	public String insertSubReply(SubReply subRe, HttpServletRequest request) {
		int userNo= 0;
		if( request.getSession().getAttribute("loginUser") != null ) {
			userNo = ((Member)(request.getSession().getAttribute("loginUser"))).getUserNo();
			
			subRe.setSubWriNo(userNo);
		}
		
		System.out.println(subRe);
		int result = pService2.insertSubReply(subRe);
		
		if(result > 0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	//아티스트 팔로우
	@ResponseBody
	@RequestMapping("followInsert.dr")
	public String insertFollow(int followerNo, int followNo, DetailFollow follow, Model model) {
		
		follow.setFollowerNo(followerNo);
		follow.setFollowNo(followNo);
		
		int result = pService2.insertFollow(follow);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	//아티스트 팔로우 취소
	@ResponseBody
	@RequestMapping("followDelete.dr")
	public String deleteFollow(int followerNo, int followNo, DetailFollow follow, Model model) {
		
		follow.setFollowerNo(followerNo);
		follow.setFollowNo(followNo);
		
		int result = pService2.deleteFollow(follow);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	//프로젝트 신고 하기
	@ResponseBody
	@RequestMapping("detailReport.dr")
	public String insertReport(int pNo, int uNo, String repContent, DetailReport report, Model model) {
		
		report.setRepContent(repContent);
		report.setRepRefPno(pNo);
		report.setRepWriter(uNo);
		
		int result = pService2.insertReport(report);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	//댓글수정
	@ResponseBody
	@RequestMapping("updateReply.dr")
	public String updateReply(String content, int rNo, Reply reply) {
		
		reply.setReContent(content);
		reply.setReNo(rNo);
		
		int result = pService2.updateReply(reply);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	//댓글 삭제
	@ResponseBody
	@RequestMapping("deleteReply.dr")
	public String deleteReply(int rNo) {
		
		int result = pService2.deleteReply(rNo);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	//대댓글 수정
	@ResponseBody
	@RequestMapping("updateSubRe.dr")
	public String updateSubRe(int subNo, String updateSubCon, SubReply sReply) {
		
		sReply.setSubNo(subNo);
		sReply.setSubContent(updateSubCon);
		
		int result = pService2.updateSubRe(sReply);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
	}
	
	//대댓글 삭제
	@ResponseBody
	@RequestMapping("deleteSubRe.dr")
	public String deleteSubRe(int subNo) {
		
		int result = pService2.deleteSubRe(subNo);
		
		if(result > 0) {
			return "1";
		}else {
			return "2";
		}
		
	}
	
	

}
