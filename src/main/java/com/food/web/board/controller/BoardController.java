package com.food.web.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.board.dto.BoardInfo;
import com.food.web.board.service.BoardService;

@Controller
public class BoardController {


	@Autowired
	BoardService bs;


	@RequestMapping(value="/notice/notice", method= RequestMethod.GET)
	public String knotice(Model model){
		return "notice/notice";
	}
	
	@RequestMapping(value="/notice/notice", method= RequestMethod.POST)
	public @ResponseBody ModelMap getBoardResult(@RequestBody BoardInfo board){
		ModelMap model = new ModelMap();
		try{
			model.put("getBoardInfoList", bs.getBoardInfoList(board));
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
<<<<<<< HEAD
	@RequestMapping(value="/notice/write", method= RequestMethod.GET)
=======
	@RequestMapping(value="/menutab/board_insert", method= RequestMethod.GET)
>>>>>>> branch 'master' of https://github.com/Prekallen/Team_Project.git
	public String write(Model model){
<<<<<<< HEAD
		return "notice/write";
=======
		return "menutab/board_insert";
>>>>>>> branch 'master' of https://github.com/Prekallen/Team_Project.git
	}
	
<<<<<<< HEAD
	@RequestMapping(value="/notice/write", method= RequestMethod.POST)
=======
	@RequestMapping(value="/menutab/board_insert", method= RequestMethod.POST)
>>>>>>> branch 'master' of https://github.com/Prekallen/Team_Project.git
	public @ResponseBody List<BoardInfo> insertBoardInfoList(@RequestBody BoardInfo board){
		bs.inserBoardInfo(board);
		return bs.getBoardInfoList(board);
	}
	
	@RequestMapping(value="/menutab/board_view", method= RequestMethod.GET)
	public String board_view(Model model){
		return "menutab/board_view";
	}
	
	@RequestMapping(value="/menutab/update", method= RequestMethod.GET)
	public String update(Model model){
		return "menutab/update";
	}
	
}	




