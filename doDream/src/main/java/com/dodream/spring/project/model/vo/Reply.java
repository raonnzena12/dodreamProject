package com.dodream.spring.project.model.vo;

import java.sql.Date;

public class Reply {
	private int reNo;// 댓글 번호
	private String reContent;// 댓글 내용
	private String reStatus;// 댓글 상태 
	private Date reWriDate;// 댓글 작성일
	private Date reModiDate;// 댓글 수정일
	private int reRefPNo;// 프로젝트 번호
	private int reWriNo;// 작성자 번호
	private String reWriter;// 작성자 이름
	private int reCGNo;//카테고리 번호
	private String reCGName;// 카테고리 이름
	
	public Reply() {}

	public Reply(int reNo, String reContent, String reStatus, Date reWriDate, Date reModiDate, int reRefPNo,
			int reWriNo, String reWriter, int reCGNo, String reCGName) {
		super();
		this.reNo = reNo;
		this.reContent = reContent;
		this.reStatus = reStatus;
		this.reWriDate = reWriDate;
		this.reModiDate = reModiDate;
		this.reRefPNo = reRefPNo;
		this.reWriNo = reWriNo;
		this.reWriter = reWriter;
		this.reCGNo = reCGNo;
		this.reCGName = reCGName;
	}

	public int getReNo() {
		return reNo;
	}

	public void setReNo(int reNo) {
		this.reNo = reNo;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	public String getReStatus() {
		return reStatus;
	}

	public void setReStatus(String reStatus) {
		this.reStatus = reStatus;
	}

	public Date getReWriDate() {
		return reWriDate;
	}

	public void setReWriDate(Date reWriDate) {
		this.reWriDate = reWriDate;
	}

	public Date getReModiDate() {
		return reModiDate;
	}

	public void setReModiDate(Date reModiDate) {
		this.reModiDate = reModiDate;
	}

	public int getReRefPNo() {
		return reRefPNo;
	}

	public void setReRefPNo(int reRefPNo) {
		this.reRefPNo = reRefPNo;
	}

	public int getReWriNo() {
		return reWriNo;
	}

	public void setReWriNo(int reWriNo) {
		this.reWriNo = reWriNo;
	}

	public String getReWriter() {
		return reWriter;
	}

	public void setReWriter(String reWriter) {
		this.reWriter = reWriter;
	}

	public int getReCGNo() {
		return reCGNo;
	}

	public void setReCGNo(int reCGNo) {
		this.reCGNo = reCGNo;
	}

	public String getReCGName() {
		return reCGName;
	}

	public void setReCGName(String reCGName) {
		this.reCGName = reCGName;
	}

	@Override
	public String toString() {
		return "Reply [reNo=" + reNo + ", reContent=" + reContent + ", reStatus=" + reStatus + ", reWriDate="
				+ reWriDate + ", reModiDate=" + reModiDate + ", reRefPNo=" + reRefPNo + ", reWriNo=" + reWriNo
				+ ", reWriter=" + reWriter + ", reCGNo=" + reCGNo + ", reCGName=" + reCGName + "]";
	}
	
	
	
	
	
	
	
}
