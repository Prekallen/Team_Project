package com.food.web.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.user.Service.UserService;
import com.food.web.user.dto.UserInfo;




@Controller
public class UserController {
	@Autowired
	private UserService us;
	
	@RequestMapping(value="/user/login", method=RequestMethod.POST)
	public@ResponseBody ModelMap login(HttpSession hs, @RequestBody UserInfo user, ModelMap hm){
		UserInfo rUser = us.login(user);
		if(rUser!=null){
			hs.setAttribute("user", rUser);
			hm.put("msg", "로그인 성공하셨습니다.");
			hm.put("url", "test/test2");
		}else{
			hm.put("msg", "아이디와 비밀번호를 확인해주세요.");
			hm.put("url", "mainmemi");
		}
		return hm;
	}
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public String goLogin(){
		return "user/login";
	}
	
	@RequestMapping(value="/user/insert", method=RequestMethod.POST)
	public @ResponseBody ModelMap insert(HttpSession hs, @RequestBody UserInfo user, ModelMap hm){
		if(us.insertUser(user)==1){
			hm.put("msg", "회원가입성공");
			hm.put("url", "mainmemi");
		}else{
			hm.put("msg", "안됨");
			hm.put("url", "menutab/signup");
		}
		return hm;
	}
	
	
	
	
	

	
	@RequestMapping(value="/user/list", method=RequestMethod.POST)
	public @ResponseBody List<UserInfo> getUserList(HttpSession hs, UserInfo user, ModelMap hm){
		return us.selectUserList(user);
	}
	
	


	
}
	
	
