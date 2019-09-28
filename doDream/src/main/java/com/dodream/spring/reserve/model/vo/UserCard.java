package com.dodream.spring.reserve.model.vo;

/**
 * 유저가 넘기는 카드정보를 깔끔하게 받아오기 위한 Class
 * @author HSH
 *
 */
public class UserCard {
	
	// 숫자 맨 앞자리에 0이 들어갈수도 있으므로 String으로 선언..
	private String cardNo1;
	private String cardNo2;
	private String cardNo3;
	private String cardNo4;
	private String expiry; // 유효기간
	private String authentication; // 본인인증용 생년월일 6자리 혹은 사업자번호 10자리
	private String pwd2; // 카드 비밀번호 2자리 
	private String userUid; // 결제 서버에 카드정보 넘길때 쓰는 uId
	// userNo_cardNo4 형식으로 조합할까 생각 중
	
	public UserCard() {
	}
	public UserCard(String cardNo1, String cardNo2, String cardNo3, String cardNo4, String expiry,
			String authentication, String pwd2, String userUid) {
		super();
		this.cardNo1 = cardNo1;
		this.cardNo2 = cardNo2;
		this.cardNo3 = cardNo3;
		this.cardNo4 = cardNo4;
		this.expiry = expiry;
		this.authentication = authentication;
		this.pwd2 = pwd2;
		this.userUid = userUid;
	}
	public String getCardNo1() {
		return cardNo1;
	}
	public void setCardNo1(String cardNo1) {
		this.cardNo1 = cardNo1;
	}
	public String getCardNo2() {
		return cardNo2;
	}
	public void setCardNo2(String cardNo2) {
		this.cardNo2 = cardNo2;
	}
	public String getCardNo3() {
		return cardNo3;
	}
	public void setCardNo3(String cardNo3) {
		this.cardNo3 = cardNo3;
	}
	public String getCardNo4() {
		return cardNo4;
	}
	public void setCardNo4(String cardNo4) {
		this.cardNo4 = cardNo4;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	public String getAuthentication() {
		return authentication;
	}
	public void setAuthentication(String authentication) {
		this.authentication = authentication;
	}
	public String getPwd2() {
		return pwd2;
	}
	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}
	public String getUserUid() {
		return userUid;
	}
	public void setUserUid(String userUid) {
		this.userUid = userUid;
	}
	@Override
	public String toString() {
		return "UserCard [cardNo1=" + cardNo1 + ", cardNo2=" + cardNo2 + ", cardNo3=" + cardNo3 + ", cardNo4=" + cardNo4
				+ ", expiry=" + expiry + ", authentication=" + authentication + ", pwd2=" + pwd2 + ", userUid="
				+ userUid + "]";
	}
}
