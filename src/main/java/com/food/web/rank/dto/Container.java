package com.food.web.rank.dto;

import java.util.List;
import java.util.Map;

public class Container {
    private List<Map<String,String>> keyWordList;
    
	public List<Map<String, String>> getKeyWordList() {
		return keyWordList;
	}
	public void setKeyWordList(List<Map<String, String>> keyWordList) {
		this.keyWordList = keyWordList;
	}
    
    
}
