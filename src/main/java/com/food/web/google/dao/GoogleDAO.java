package com.food.web.google.dao;

import java.util.List;

import com.food.web.google.dto.GoogleInfo;

public interface GoogleDAO {
	public List<GoogleInfo> insertGoogle(GoogleInfo gi);
}
