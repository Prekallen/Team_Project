package com.food.web.api.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import com.food.web.api.dto.MapInfo;

public interface MapService {
	public MapInfo getMapList(HashMap query) throws UnsupportedEncodingException, IOException;
}
