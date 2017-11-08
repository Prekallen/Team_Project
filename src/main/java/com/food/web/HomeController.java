package com.food.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.food.web.rank.service.rankService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	private rankService rs;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

	@RequestMapping(value="/mainmemi", method= RequestMethod.GET)
	public String mainmemi(ModelMap model){
		List<Map<String,String>> keyWordList = rs.getKeywordList().getKeyWordList();
		logger.info("keyWorkdList => {}", keyWordList);
		model.put("keyWordList", keyWordList);
		return "mainmemi";
	}
	
	@RequestMapping(value="/intro", method= RequestMethod.GET)
	public String intro(Model model){
		return "intro";
	}
	@RequestMapping(value="/menutab/kgroup", method= RequestMethod.GET)
	public String kgroup(Model model){
		return "menutab/kgroup";
	}
	@RequestMapping(value="/menutab/klocal", method= RequestMethod.GET)
	public String klocal(Model model){
		return "menutab/klocal";
	}
	
	@RequestMapping(value="/test/test2", method= RequestMethod.GET)
	public String test2(Model model){
		return "test/test2";
	}
	@RequestMapping(value="/user/logout", method= RequestMethod.GET)
	public String logout(Model model){
		return "/user/logout";
	}
	@RequestMapping(value="/user/signout", method= RequestMethod.GET)
	public String signout(Model model){
		return "/user/signout";
	}
	
}
