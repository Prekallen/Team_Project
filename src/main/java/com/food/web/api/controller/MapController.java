package com.food.web.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.api.dto.MapInfo;

@Controller
public class MapController {

	@Autowired MapInfo mi;
	//test
		@RequestMapping(value= "/apitest", method=RequestMethod.POST)
		public @ResponseBody ModelMap getApiResults(@RequestBody String query){
			ModelMap model = new ModelMap();
			try{
				model.put("name", mi.getName());
				model.put("formatted_address", mi.getFormatted_address());
				model.put("rating", mi.getRating());
				
			}catch(Exception e){
				e.printStackTrace();
			}
		    return model;
		}
}
