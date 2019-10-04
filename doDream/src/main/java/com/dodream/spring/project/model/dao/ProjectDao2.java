package com.dodream.spring.project.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.project.model.vo.DetailFollow;
import com.dodream.spring.project.model.vo.Like;
import com.dodream.spring.project.model.vo.Reply;
import com.dodream.spring.project.model.vo.Reward;
import com.dodream.spring.project.model.vo.SubReply;

@Repository("pDao2")
public class ProjectDao2 {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/**
	 * 리워드 조회용 DAO
	 * @param pno
	 * @return
	 */
	public ArrayList<Reward> selectReward(int pno) {
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectReward", pno);
	}


	/**
	 * 프로젝트 좋아요용 DAO
	 * @param userNo
	 * @param pNo
	 * @return
	 */
	public int insertProjectLike(Like like) {
		
		return sqlSession.insert("projectMapper.insertProjectLike", like);
	}


	/**
	 * 프로젝트 좋아요 select용 DAO
	 * @param pno
	 * @return like
	 */
	public Like selectLike(Like like) {
		
		return sqlSession.selectOne("projectMapper.selectLike", like);
	}


	/**
	 * 좋아요 취소
	 * @param like
	 * @return
	 */
	public int deleteLike(Like like) {
		
		return sqlSession.delete("projectMapper.deleteLike", like);
	}


	/**
	 *  댓글 등록용 DAO
	 * @param reply
	 * @return result
	 */
	public int insertReply(Reply reply) {
		
		return sqlSession.insert("projectMapper.insertReply", reply);
	}


	/**
	 * 댓글 조회용  DAO
	 * @param pNo
	 * @return reList
	 */
	public ArrayList<Reply> selectReply(int pNo) {
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectReply", pNo);
	}


	/**
	 * 서브 댓글 조회용 DAO
	 * @param reList
	 * @return srList
	 */
	public ArrayList<SubReply> selectSubReply(ArrayList<Reply> reList) {
		
		return (ArrayList)sqlSession.selectList("projectMapper.selectSubReply", reList);
	}


	/**
	 * 서브 댓글 등록용 DAO
	 * @param subRe
	 * @return result
	 */
	public int selectSubReply(SubReply subRe) {
	
		return sqlSession.insert("projectMapper.insertSubReply", subRe);
	}


	/**팔로우 조회용 DAO
	 * @param follow
	 * @return fl
	 */
	public DetailFollow selectFollow(DetailFollow follow) {
		
		return sqlSession.selectOne("projectMapper.selectFollow", follow);
	}


	/**
	 * 팔로우 등록 DAO
	 * @param follow
	 * @return result
	 */
	public int insertFollow(DetailFollow follow) {
		
		return  sqlSession.insert("projectMapper.insertFollow", follow);
	}


	/**
	 * 팔로우 취소 DAO
	 * @param follow
	 * @return result
	 */
	public int deleteFollow(DetailFollow follow) {
		
		return sqlSession.delete("projectMapper.deleteFollow", follow);
	}
}
