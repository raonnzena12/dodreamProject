package com.dodream.spring.project.vo;

import java.sql.Date;

public class Project {
	private int pNo;
	private String pTitle;
	private String pSTitle;
	private int pGoal;
	private String pThumbImage;
	private Date pStartDate;
	private Date pCloseDate;
	private String pHashTag;
	private String pMainImage;
	private String pSummaryText;
	private String pStory;
	private String pArtistName;
	private String pArtistPFImage;
	private String pArtistSns1;
	private String pArtistSns2;
	private String pArtistPhone;
	private String pArtistEmail;
	private Date pEnrollDate;
	private Date pModifyDate;
	private int pWritter;
	private int pCategoryNum;
	private int pStatusNum;
	private int pCount;
	
	public Project() {}

	public Project(int pNo, String pTitle, String pSTitle, int pGoal, String pThumbImage, Date pStartDate,
			Date pCloseDate, String pHashTag, String pMainImage, String pSummaryText, String pStory, String pArtistName,
			String pArtistPFImage, String pArtistSns1, String pArtistSns2, String pArtistPhone, String pArtistEmail,
			Date pEnrollDate, Date pModifyDate, int pWritter, int pCategoryNum, int pStatusNum, int pCount) {
		super();
		this.pNo = pNo;
		this.pTitle = pTitle;
		this.pSTitle = pSTitle;
		this.pGoal = pGoal;
		this.pThumbImage = pThumbImage;
		this.pStartDate = pStartDate;
		this.pCloseDate = pCloseDate;
		this.pHashTag = pHashTag;
		this.pMainImage = pMainImage;
		this.pSummaryText = pSummaryText;
		this.pStory = pStory;
		this.pArtistName = pArtistName;
		this.pArtistPFImage = pArtistPFImage;
		this.pArtistSns1 = pArtistSns1;
		this.pArtistSns2 = pArtistSns2;
		this.pArtistPhone = pArtistPhone;
		this.pArtistEmail = pArtistEmail;
		this.pEnrollDate = pEnrollDate;
		this.pModifyDate = pModifyDate;
		this.pWritter = pWritter;
		this.pCategoryNum = pCategoryNum;
		this.pStatusNum = pStatusNum;
		this.pCount = pCount;
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

	@Override
	public String toString() {
		return "Project [pNo=" + pNo + ", pTitle=" + pTitle + ", pSTitle=" + pSTitle + ", pGoal=" + pGoal
				+ ", pThumbImage=" + pThumbImage + ", pStartDate=" + pStartDate + ", pCloseDate=" + pCloseDate
				+ ", pHashTag=" + pHashTag + ", pMainImage=" + pMainImage + ", pSummaryText=" + pSummaryText
				+ ", pStory=" + pStory + ", pArtistName=" + pArtistName + ", pArtistPFImage=" + pArtistPFImage
				+ ", pArtistSns1=" + pArtistSns1 + ", pArtistSns2=" + pArtistSns2 + ", pArtistPhone=" + pArtistPhone
				+ ", pArtistEmail=" + pArtistEmail + ", pEnrollDate=" + pEnrollDate + ", pModifyDate=" + pModifyDate
				+ ", pWritter=" + pWritter + ", pCategoryNum=" + pCategoryNum + ", pStatusNum=" + pStatusNum
				+ ", pCount=" + pCount + "]";
	}
}
