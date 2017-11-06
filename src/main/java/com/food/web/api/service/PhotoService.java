package com.food.web.api.service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import com.food.web.api.dto.MapInfo;

public interface PhotoService {

	public List<String> getPhotoList(List<MapInfo> pht) throws UnsupportedEncodingException, IOException;
}
