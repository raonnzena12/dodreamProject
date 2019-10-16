package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dodream.spring.project.model.dao.ProjectDao2;
import com.dodream.spring.project.model.vo.DetailFollow;
import com.dodream.spring.project.model.vo.DetailReport;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.project.model.vo.SubReply;


@Service("pService2")
public class ProjectServiceImpl2 implements ProjectService2{

	
	@Autowired
	private ProjectDao2 pDao2;
	
	// 리워드 조회용 Service
	@Override
	public ArrayList<Reward> selectReward(int pno) {
		
		return pDao2.selectReward(pno);
	}

	// 프로젝트 좋아요 insert용 Service
	@Override
	public int insertProjectLike(Like like) {
		
		return pDao2.insertProjectLike(like);
	}
	
	//프로젝트 좋아요 select용 Service
	@Override
	public Like selectLike(Like like) {
		
		
		
		System.out.println(like);
		
		return pDao2.selectLike(like);
	}

	//프로젝트 좋아요 취소 Service
	@Override
	public int deleteLike(Like like) {
		
		return pDao2.deleteLike(like);
	}
	
	//댓글 등록용 Service
	@Override
	public int insertReply(Reply reply) {
		
		reply.setReContent(reply.getReContent().replace("\n", "<br>"));
		
		return pDao2.insertReply(reply);
	}
	
	// 댓글 조회용 Service
	@Override
	public ArrayList<Reply> selectReply(int pNo) {
		
		return pDao2.selectReply(pNo);
	}
	
	// 서브 댓글 조회용 Service
	@Override
	public ArrayList<SubReply> selectSubReply(ArrayList<Reply> reList) {
		
		return pDao2.selectSubReply(reList);
	}
	
	// 서브 댓글 입력 Service
	@Override
	public int insertSubReply(SubReply subRe) {
		
		subRe.setSubContent(subRe.getSubContent().replace("\n","<br>"));
		
		return pDao2.selectSubReply(subRe);
	}
	
	//팔로우 조회용 Service
	@Override
	public DetailFollow selectFollow(DetailFollow follow) {
		
		return pDao2.selectFollow(follow);
	}
	
	//팔로우 등록
	@Override
	public int insertFollow(DetailFollow follow) {
		
		return  pDao2.insertFollow(follow);
	}

	//팔로우 취소
	@Override
	public int deleteFollow(DetailFollow follow) {
		
		return pDao2.deleteFollow(follow);
	}
	
	//프로젝트 신고
	@Override
	public int insertReport(DetailReport report) {
		
		return pDao2.insertReport(report);
	}
	//신고 조회
	@Override
	public DetailReport selectReport(DetailReport report) {
		
		return pDao2.selectReport(report);
	}
	
	//댓글 수정
	@Override
	public int updateReply(Reply reply) {
		
		reply.setReContent(reply.getReContent().replace("\n", "<br>"));
		
		return pDao2.updateReply(reply);
	}
	//댓글 삭제
	@Override
	public int deleteReply(int rNo) {
		
		return pDao2.deleteReply(rNo);
	}
	
	//서브 댓글 수정
	@Override
	public int updateSubRe(SubReply sReply) {
		
		sReply.setSubContent(sReply.getSubContent().replace("\n","<br>"));
		
		return pDao2.updateSubRe(sReply);
	}
	
	//서브 댓글 삭제
	@Override
	public int deleteSubRe(int subNo) {
		
		return pDao2.deleteSubRe(subNo);
	}
	
	
}
