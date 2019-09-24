package com.dodream.spring.project.model.vo;

public class Like {
	
	private int likeNo;
	private int likePrNo;
	
	public Like() {
		
	}

	public Like(int likeNo, int likePrNo) {
		super();
		this.likeNo = likeNo;
		this.likePrNo = likePrNo;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public int getLikePrNo() {
		return likePrNo;
	}

	public void setLikePrNo(int likePrNo) {
		this.likePrNo = likePrNo;
	}

	@Override
	public String toString() {
		return "Like [likeNo=" + likeNo + ", likePrNo=" + likePrNo + "]";
	}
	
	
	
	
	
}
