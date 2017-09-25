package com.food.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
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
	
	@RequestMapping(value="/main", method= RequestMethod.GET)
	public String main(Model model){
		return "main";
	}
	@RequestMapping(value="/menutab/intro", method= RequestMethod.GET)
	public String intro(Model model){
		return "menutab/intro";
	}
	
	@RequestMapping(value="/main2", method= RequestMethod.GET)
	public String main2(Model model){
		return "main2";
	}
	
	@RequestMapping(value="/mango_plate_main", method= RequestMethod.GET)
	public String main3(Model model){
		return "mango_plate_main";
	}
	
}
