package com.food.web.rank.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.food.web.rank.dto.Container;
import com.food.web.rank.service.rankService;

@Controller
public class rankController {
	
	@Autowired
	rankService rs;
	
	@RequestMapping(value="/rank/rank", method= RequestMethod.GET)
	public String rank(Model model){
		Container c = rs.getKeywordList();
		List<Map<String,String>> keyWordList = c.getKeyWordList();
		model.addAttribute("keyworkdList", keyWordList);
		return "rank/rank";
	}
	
}
