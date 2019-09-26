package com.dodream.spring.reserve.model.vo;

import java.util.ArrayList;

public class HistoryList {
	private ArrayList<History> hList;
	
	public HistoryList() {}

	public HistoryList(ArrayList<History> hList) {
		super();
		this.hList = hList;
	}

	public ArrayList<History> gethList() {
		return hList;
	}

	public void sethList(ArrayList<History> hList) {
		this.hList = hList;
	}

	@Override
	public String toString() {
		return "HistoryList [hList=" + hList + "]";
	}
}
