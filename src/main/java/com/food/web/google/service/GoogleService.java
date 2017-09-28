package com.food.web.google.service;

import java.util.List;

import com.food.web.google.dto.GoogleInfo;

public interface GoogleService {
	public List<GoogleInfo> searchInGoogle(GoogleInfo gi);
}
