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
	
	@RequestMapping(value="/menutab/notice", method= RequestMethod.GET)
	public String notice(Model model){
		return "menutab/notice";
	}
	
	@RequestMapping(value="/main2", method= RequestMethod.GET)
	public String main2(Model model){
		return "main2";
	}
	
	@RequestMapping(value="/menutab/local", method= RequestMethod.GET)
	public String local(Model model){
		return "menutab/local";
	}
	
	@RequestMapping(value="/menutab/group", method= RequestMethod.GET)
	public String group(Model model){
		return "menutab/group";
	}
	
	@RequestMapping(value="/menutab/login", method= RequestMethod.GET)
	public String login(Model model){
		return "menutab/login";
	}
	
	@RequestMapping(value="/mango_plate_main", method= RequestMethod.GET)
	public String main3(Model model){
		return "mango_plate_main";
	}
	@RequestMapping(value="/test/test", method= RequestMethod.GET)
	public String test(Model model){
		return "test/test";
	}
	
	@RequestMapping(value="/mememi", method= RequestMethod.GET)
	public String mememi(Model model){
		return "mememi";
	}
	@RequestMapping(value="/mainmemi", method= RequestMethod.GET)
	public String mainmemi(Model model){
		return "mainmemi";
	}
	@RequestMapping(value="/signup", method= RequestMethod.GET)
	public String signup(Model model){
		return "signup";
	}
	
	
	
	
	
	//main 테스트용 k버전
	@RequestMapping(value="/menutab/klogin", method= RequestMethod.GET)
	public String klogin(Model model){
		return "menutab/klogin";
	}
	@RequestMapping(value="/menutab/kintro", method= RequestMethod.GET)
	public String kintro(Model model){
		return "menutab/kintro";
	}
	@RequestMapping(value="/menutab/kgroup", method= RequestMethod.GET)
	public String kgroup(Model model){
		return "menutab/kgroup";
	}
	@RequestMapping(value="/menutab/klocal", method= RequestMethod.GET)
	public String klocal(Model model){
		return "menutab/klocal";
	}
	
}
