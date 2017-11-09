package com.food.web.user.controller;

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
			hm.put("url", "test/test2");
		}
		return hm;
	}
	@RequestMapping(value="/user/login", method=RequestMethod.GET)
	public String goLogin(){
		return "user/login";
	}
	
	@RequestMapping(value="/user/signup", method=RequestMethod.POST)
	public @ResponseBody ModelMap insert(HttpSession hs, @RequestBody UserInfo user, ModelMap hm){
		int ctn = us.insertUser(user);
		if(ctn==1){
			hm.put("msg", "회원가입되었습니다. 로그인해주세요.");
			hm.put("url", "test/test2");
		}else{
			hm.put("msg", "안됨");
			hm.put("url", "test/test2");
		}
		return hm;
	}
	
	@RequestMapping(value="/user/signout", method=RequestMethod.POST)
	public @ResponseBody ModelMap delete(HttpSession hs, @RequestBody UserInfo user, ModelMap hm){
		int dUser = us.deleteUser(user);
		if(dUser==1){
			hm.put("msg", "회원탈퇴되었습니다.");
			hm.put("url", "user/signout");
		}else{
			hm.put("msg", "못나가");
			hm.put("url", "test/test2");
		}
		return hm;
	}
	
	@RequestMapping(value="/user/googleLogin", method=RequestMethod.POST)
	public @ResponseBody ModelMap googleLogin(@RequestBody UserInfo user, ModelMap hm,HttpSession hs){
		boolean logincheck = user.isLoginCheck();
		if(logincheck){
			hs.setAttribute("user", user);
			hm.put("msg", "구글 로그인 성공");
			hm.put("url", "test/test2");
			
		}else{
			hm.put("msg", "다시해");
			hm.put("url", "test/test2");
		}
		logincheck =false;
		return hm;
	}
	
	
}
	
	
