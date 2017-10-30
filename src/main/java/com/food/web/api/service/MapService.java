package com.food.web.api.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import com.food.web.api.dto.MapInfo;

public interface MapService {
	public MapInfo getMapList(String query) throws UnsupportedEncodingException, IOException;
}