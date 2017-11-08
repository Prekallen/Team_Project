package com.food.web.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.food.web.board.dto.BoardInfo;
import com.food.web.board.service.BoardService;

@Controller
public class BoardController {


	@Autowired
	BoardService bs;


	@RequestMapping(value="/notice/board_list", method= RequestMethod.GET)
	public String board_list(Model model){
		return "notice/board_list";
	}
	
	@RequestMapping(value="/notice/board_list", method= RequestMethod.POST)
	public @ResponseBody ModelMap getBoardResult(@RequestBody BoardInfo board){
		ModelMap model = new ModelMap();
		try{
			model.put("getBoardInfoList", bs.getBoardInfoList(board));
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value="/notice/board_insert", method= RequestMethod.GET)
	public String write(Model model){
		return "notice/board_insert";
	}
	
	@RequestMapping(value="/notice/board_insert", method= RequestMethod.POST)
	public @ResponseBody List<BoardInfo> insertBoardInfoList(@RequestBody BoardInfo board){
		bs.insertBoardInfo(board);
		return bs.getBoardInfoList(board);
	}
	
//	@RequestMapping(value="/notice/board_view", method= RequestMethod.GET)
//	public @ResponseBody String board_view(@RequestBody String sNum,  ModelMap model){
//		if(sNum!=null){
//			int bNum = Integer.parseInt(sNum);
//			BoardInfo board = new BoardInfo();
//			board.setbNum(bNum);
//			model.put("bName", bs.getBoardInfo(bNum).getbName());
//			model.put("bTitle", bs.getBoardInfo(board).getbTitle());
//			model.put("bContents", bs.getBoardInfo(board).getbContents());
//		}else{
//			return "notice/board_list";
//		}
//		return "notice/board_view";
//	}
	@RequestMapping(value="/notice/board_view", method= RequestMethod.GET)
	public String view(@RequestParam(value="bNum") int bNum,ModelMap model){
		model.put("bi",bs.getBoardInfo(bNum));
		return "notice/board_view";
	}
	
	@RequestMapping(value="/notice/board_view", method= RequestMethod.POST)
	public @ResponseBody ModelMap getBoardResult(@RequestBody int bNum,BoardInfo board){
		ModelMap model = new ModelMap();
		try{
			model.put("bi",bs.getBoardInfo(bNum));
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value="/notice/update", method= RequestMethod.GET)
	public String update(Model model){
		return "notice/update";
	}
	
	@RequestMapping(value="/notice/board_delete", method= RequestMethod.GET)
	public @ResponseBody int delete(@RequestBody int bNum, BoardInfo board){
		bs.getBoardInfo(bNum);
		return bs.deleteBoardInfo(board);
	}

	
}	




