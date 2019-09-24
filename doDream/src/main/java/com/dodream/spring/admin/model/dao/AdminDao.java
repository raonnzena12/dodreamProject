package com.dodream.spring.admin.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dodream.spring.common.model.vo.PageInfo;
import com.dodream.spring.member.model.vo.Member;

@Repository("aDao")
public class AdminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public int countNewMember() {
		return sqlSession.selectOne("adminMemberMapper.countNewMember");
	}

	public int countLeaveMember() {
		return sqlSession.selectOne("adminMemberMapper.countLeaveMember");
	}

	public int countBlackListMember() {
		return sqlSession.selectOne("adminMemberMapper.countBlackListMember");
	}

	public int countProject1() {
		return sqlSession.selectOne("adminFundingMapper.countProject1");
	}
	
	public int countProject2() {
		return sqlSession.selectOne("adminFundingMapper.countProject2");
	}
	
	public int countProject3() {
		return sqlSession.selectOne("adminFundingMapper.countProject3");
	}

	/** 전체 회원 수 조회 Dao
	 * @return listCount
	 */
	public int getListCount() {
		// adminMemberMapper.xml 에 getListCount 이름을 가진 쿼리문을 호출한다.
		return sqlSession.selectOne("adminMemberMapper.getListCount");
	}

	/** 회원 목록 조회 Dao
	 * @param pi
	 * @return list 
	 */
	public ArrayList<Member> selectMemberList(PageInfo pi) {

		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		// 매개변수는 없기 때문에 null 
		// 마지막은 계산해놓은 rowBounds 사용 
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectMemberList", null, rowBounds);
	}

	/** 블랙리스트  회원 수 조회 Dao
	 * @return listCount
	 */
	public int getBlackListCount() {
		// adminMemberMapper.xml 에 getListCount 이름을 가진 쿼리문을 호출한다.
		return sqlSession.selectOne("adminMemberMapper.getBlackListCount");
	}
	
	/** 블랙리스트 회원 목록 조회 Dao
	 * @param pi
	 * @return
	 */
	public ArrayList<Member> selectBlackList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		// 매개변수는 없기 때문에 null 
		// 마지막은 계산해놓은 rowBounds 사용 
		return (ArrayList)sqlSession.selectList("adminMemberMapper.selectBlackList", null, rowBounds);
	}


}
