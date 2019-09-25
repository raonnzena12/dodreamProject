package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class Project {
	private int pNo;
	private String pTitle;
	private String pSTitle;
	private int pGoal;// 목표금액
	private String pCommaGoal;// 목표금액 ,구분된것
	private int pCurrentFunding; // 현재 펀딩된 금액
	private String pThumbImage;
	private Date pStartDate;
	private Date pCloseDate;
	private String pDDay;
	private String pHashTag;
	private String pMainImage;
	private String pSummaryText;
	private String pStory;
	private String pArtistName;
	private String pArtistIntroduction;
	private String pArtistPFImage;
	private String pArtistSns1;
	private String pArtistSns2;
	private String pArtistPhone;
	private String pArtistEmail;
	private Date pEnrollDate;
	private Date pModifyDate;
	private int pWritter;
	private int pCategoryNum;
	private String pCategoryName;
	private int pStatusNum;
	private int pCount;
	private int pOpenCount; // 프로젝트 작성자가 오픈한 프로젝트 개수
	
	public Project() {}

	public Project(int pNo, String pTitle, String pSTitle, int pGoal, String pCommaGoal, int pCurrentFunding,
			String pThumbImage, Date pStartDate, Date pCloseDate, String pDDay, String pHashTag, String pMainImage,
			String pSummaryText, String pStory, String pArtistName, String pArtistIntroduction, String pArtistPFImage,
			String pArtistSns1, String pArtistSns2, String pArtistPhone, String pArtistEmail, Date pEnrollDate,
			Date pModifyDate, int pWritter, int pCategoryNum, String pCategoryName, int pStatusNum, int pCount, int pOpenCount) {
		super();
		this.pNo = pNo;
		this.pTitle = pTitle;
		this.pSTitle = pSTitle;
		this.pGoal = pGoal;
		this.pCommaGoal = pCommaGoal;
		this.pCurrentFunding = pCurrentFunding;
		this.pThumbImage = pThumbImage;
		this.pStartDate = pStartDate;
		this.pCloseDate = pCloseDate;
		this.pDDay = pDDay;
		this.pHashTag = pHashTag;
		this.pMainImage = pMainImage;
		this.pSummaryText = pSummaryText;
		this.pStory = pStory;
		this.pArtistName = pArtistName;
		this.pArtistIntroduction = pArtistIntroduction;
		this.pArtistPFImage = pArtistPFImage;
		this.pArtistSns1 = pArtistSns1;
		this.pArtistSns2 = pArtistSns2;
		this.pArtistPhone = pArtistPhone;
		this.pArtistEmail = pArtistEmail;
		this.pEnrollDate = pEnrollDate;
		this.pModifyDate = pModifyDate;
		this.pWritter = pWritter;
		this.pCategoryNum = pCategoryNum;
		this.pCategoryName = pCategoryName;
		this.pStatusNum = pStatusNum;
		this.pCount = pCount;
		this.pOpenCount = pOpenCount;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpTitle() {
		return pTitle;
	}

	public void setpTitle(String pTitle) {
		this.pTitle = pTitle;
	}

	public String getpSTitle() {
		return pSTitle;
	}

	public void setpSTitle(String pSTitle) {
		this.pSTitle = pSTitle;
	}

	public int getpGoal() {
		return pGoal;
	}

	public void setpGoal(int pGoal) {
		this.pGoal = pGoal;
	}

	public String getpCommaGoal() {
		return pCommaGoal;
	}

	public void setpCommaGoal(String pCommaGoal) {
		this.pCommaGoal = pCommaGoal;
	}

	public int getpCurrentFunding() {
		return pCurrentFunding;
	}

	public void setpCurrentFunding(int pCurrentFunding) {
		this.pCurrentFunding = pCurrentFunding;
	}

	public String getpThumbImage() {
		return pThumbImage;
	}

	public void setpThumbImage(String pThumbImage) {
		this.pThumbImage = pThumbImage;
	}

	public Date getpStartDate() {
		return pStartDate;
	}

	public void setpStartDate(Date pStartDate) {
		this.pStartDate = pStartDate;
	}

	public Date getpCloseDate() {
		return pCloseDate;
	}

	public void setpCloseDate(Date pCloseDate) {
		this.pCloseDate = pCloseDate;
	}

	public String getpDDay() {
		return pDDay;
	}

	public void setpDDay(String pDDay) {
		this.pDDay = pDDay;
	}

	public String getpHashTag() {
		return pHashTag;
	}

	public void setpHashTag(String pHashTag) {
		this.pHashTag = pHashTag;
	}

	public String getpMainImage() {
		return pMainImage;
	}

	public void setpMainImage(String pMainImage) {
		this.pMainImage = pMainImage;
	}

	public String getpSummaryText() {
		return pSummaryText;
	}

	public void setpSummaryText(String pSummaryText) {
		this.pSummaryText = pSummaryText;
	}

	public String getpStory() {
		return pStory;
	}

	public void setpStory(String pStory) {
		this.pStory = pStory;
	}

	public String getpArtistName() {
		return pArtistName;
	}

	public void setpArtistName(String pArtistName) {
		this.pArtistName = pArtistName;
	}

	public String getpArtistIntroduction() {
		return pArtistIntroduction;
	}

	public void setpArtistIntroduction(String pArtistIntroduction) {
		this.pArtistIntroduction = pArtistIntroduction;
	}

	public String getpArtistPFImage() {
		return pArtistPFImage;
	}

	public void setpArtistPFImage(String pArtistPFImage) {
		this.pArtistPFImage = pArtistPFImage;
	}

	public String getpArtistSns1() {
		return pArtistSns1;
	}

	public void setpArtistSns1(String pArtistSns1) {
		this.pArtistSns1 = pArtistSns1;
	}

	public String getpArtistSns2() {
		return pArtistSns2;
	}

	public void setpArtistSns2(String pArtistSns2) {
		this.pArtistSns2 = pArtistSns2;
	}

	public String getpArtistPhone() {
		return pArtistPhone;
	}

	public void setpArtistPhone(String pArtistPhone) {
		this.pArtistPhone = pArtistPhone;
	}

	public String getpArtistEmail() {
		return pArtistEmail;
	}

	public void setpArtistEmail(String pArtistEmail) {
		this.pArtistEmail = pArtistEmail;
	}

	public Date getpEnrollDate() {
		return pEnrollDate;
	}

	public void setpEnrollDate(Date pEnrollDate) {
		this.pEnrollDate = pEnrollDate;
	}

	public Date getpModifyDate() {
		return pModifyDate;
	}

	public void setpModifyDate(Date pModifyDate) {
		this.pModifyDate = pModifyDate;
	}

	public int getpWritter() {
		return pWritter;
	}

	public void setpWritter(int pWritter) {
		this.pWritter = pWritter;
	}

	public int getpCategoryNum() {
		return pCategoryNum;
	}

	public void setpCategoryNum(int pCategoryNum) {
		this.pCategoryNum = pCategoryNum;
	}

	public String getpCategoryName() {
		return pCategoryName;
	}

	public void setpCategoryName(String pCategoryName) {
		this.pCategoryName = pCategoryName;
	}

	public int getpStatusNum() {
		return pStatusNum;
	}

	public void setpStatusNum(int pStatusNum) {
		this.pStatusNum = pStatusNum;
	}

	public int getpCount() {
		return pCount;
	}

	public void setpCount(int pCount) {
		this.pCount = pCount;
	}

	public int getpOpenCount() {
		return pOpenCount;
	}

	public void setpOpenCount(int pOpenCount) {
		this.pOpenCount = pOpenCount;
	}

	@Override
	public String toString() {
		return "Project [pNo=" + pNo + ", pTitle=" + pTitle + ", pSTitle=" + pSTitle + ", pGoal=" + pGoal
				+ ", pCommaGoal=" + pCommaGoal + ", pCurrentFunding=" + pCurrentFunding + ", pThumbImage=" + pThumbImage
				+ ", pStartDate=" + pStartDate + ", pCloseDate=" + pCloseDate + ", pDDay=" + pDDay + ", pHashTag="
				+ pHashTag + ", pMainImage=" + pMainImage + ", pSummaryText=" + pSummaryText + ", pStory=" + pStory
				+ ", pArtistName=" + pArtistName + ", pArtistIntroduction=" + pArtistIntroduction + ", pArtistPFImage="
				+ pArtistPFImage + ", pArtistSns1=" + pArtistSns1 + ", pArtistSns2=" + pArtistSns2 + ", pArtistPhone="
				+ pArtistPhone + ", pArtistEmail=" + pArtistEmail + ", pEnrollDate=" + pEnrollDate + ", pModifyDate="
				+ pModifyDate + ", pWritter=" + pWritter + ", pCategoryNum=" + pCategoryNum + ", pCategoryName="
				+ pCategoryName + ", pStatusNum=" + pStatusNum + ", pCount=" + pCount + "]";
	}
	
}
