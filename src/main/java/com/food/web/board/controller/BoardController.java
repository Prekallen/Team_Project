package com.food.web.board.controller;

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

	// 01. 게시글 목록
//	@RequestMapping(value="/board/list",method=RequestMethod.POST)
//	public @ResponseBody List<BoardInfo> getBoardResult2(@RequestBody BoardInfo board){
//		return bs.getBoardInfoList(board);
//
//	}

	@RequestMapping(value="/menutab/knotice", method= RequestMethod.GET)
	public String knotice(Model model){
		return "menutab/knotice";
	}
	
	@RequestMapping(value="/menutab/knotice", method= RequestMethod.POST)
	public @ResponseBody ModelMap getBoardResult(@RequestBody BoardInfo board){
		ModelMap model = new ModelMap();
		try{
			model.put("getBoardInfoList", bs.getBoardInfoList(board));
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
}	