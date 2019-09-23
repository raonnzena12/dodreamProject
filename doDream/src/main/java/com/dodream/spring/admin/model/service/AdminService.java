package com.dodream.spring.admin.model.service;

public interface AdminService {

	/** 관리자페이지에서 신규회원의 수를 세주는 Service
	 * @return result
	 */
	public abstract int countNewMember();

	/** 관리자 페이지에서 탈퇴회원의 수를 세주는 Service
	 * @return result 
	 */
	public abstract int countLeaveMember();

	/** 관리자 페이지에서 블랙리스트 회원의 수를 세주는 Service
	 * @return result
	 */
	public abstract int countBlackListMember();

	/** 관리자 페이지에서 심사 대기 중인 프로젝트 수를 세주는 Service
	 * @return result
	 */
	public abstract int countProject1();
	
	/** 관리자 페이지에서 심사 대기 중인 프로젝트 수를 세주는 Service
	 * @return result
	 */
	public abstract int countProject2();
	
	/** 관리자 페이지에서 심사 대기 중인 프로젝트 수를 세주는 Service
	 * @return result
	 */
	public abstract int countProject3();


}
