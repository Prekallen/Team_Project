package com.food.web.rank.dto;

public class RankInfo {

	private String ranking;
	private String keyword;
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "rankInfo [ranking=" + ranking + ", keyword=" + keyword + "]";
	}
}
