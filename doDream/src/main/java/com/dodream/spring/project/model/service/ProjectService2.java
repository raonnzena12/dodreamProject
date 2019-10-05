package com.dodream.spring.project.model.service;

import java.util.ArrayList;

import com.dodream.spring.project.model.vo.DetailFollow;
import com.dodream.spring.project.model.vo.DetailReport;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.project.model.vo.SubReply;


public interface ProjectService2 {

	/**
	 * 리워드 불러오기
	 * @param pno
	 * @return
	 */
	ArrayList<Reward> selectReward(int pno);

	/**
	 * 프로젝트 좋아요 insert
	 * @param userNo
	 * @param pNo
	 * @return result
	 */
	int insertProjectLike(Like like);

	/**
	 * 프로젝트 좋아요 조회
	 * @param pno
	 * @return like
	 */
	Like selectLike(Like like);

	/**
	 * 프로젝트 좋아요 취소
	 * @param like
	 * @return like
	 */
	int deleteLike(Like like);

	/**
	 * 댓글 등록
	 * @param reply
	 * @return
	 */
	int insertReply(Reply reply);

	/**
	 * 댓글 조회
	 * @param pNo
	 * @return reList
	 */
	ArrayList<Reply> selectReply(int pNo);

	/**
	 * 서브 댓글 조회
	 * @param reList
	 * @return srList
	 */
	ArrayList<SubReply> selectSubReply(ArrayList<Reply> reList);

	/**
	 * 서브 댓글 등록
	 * @param subRe
	 * @return result
	 */
	int insertSubReply(SubReply subRe);

	/**
	 * 팔로우 조회용 
	 * @param follow
	 * @return fl
	 */
	DetailFollow selectFollow(DetailFollow follow);

	/**
	 * 팔로우 등록
	 * @param follow
	 * @return result
	 */
	int insertFollow(DetailFollow follow);

	
	/**
	 * 팔로우 취소
	 * @param follow
	 * @return result
	 */
	int deleteFollow(DetailFollow follow);

	/**
	 * 프로젝트 신고
	 * @param report
	 * @return result
	 */
	int insertReport(DetailReport report);
	

	/**
	 * 프로젝트 신고 조회
	 * @param report
	 * @return dr
	 */
	DetailReport selectReport(DetailReport report);
	

	

}
