package com.food.web.api.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.api.service.MapService;

@Controller
public class MapController {

	@Autowired MapService ms ;
	//test
		@RequestMapping(value= "/search/searchPage", method=RequestMethod.GET)
		public String getApi(Model model) {
			return "/search/searchPage";
		}
		@RequestMapping(value= "/search/searchPage", method=RequestMethod.POST)
		public @ResponseBody ModelMap getApiResults(@RequestBody HashMap query){
			ModelMap model = new ModelMap();
			try{
				model.put("mapInfoList", ms.getMapList(query));
			}catch(Exception e){
				e.printStackTrace();
			}
		    return model;
		}
		
}
