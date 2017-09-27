package com.food.web.google.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.google.dto.GoogleInfo;
import com.food.web.google.service.GoogleService;

@Controller
public class GoogleController {
	
	@Autowired
	GoogleService gs;
	
//	@RequestMapping(value="test/test", method=RequestMethod.POST)
//	public @ResponseBody List<GoogleInfo> getGoodsInfoList(@RequestBody String query){
//		return gs.getGoogleInfoList(query);
//	}
}
