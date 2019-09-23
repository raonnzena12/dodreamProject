package com.dodream.spring.admin.model.service;

public interface AdminService {

	/** 관리자페이지에서 신규회원의 수를 세주는 Service
	 * @return result
	 */
	public abstract int countNewMember();

}
