package com.food.web.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.food.web.board.dto.BoardInfo;
import com.food.web.board.service.BoardService;

@Controller
public class BoardController {
	
	    
	    // 의존관계 주입 => BoardServiceImpl 생성
	    // IoC 의존관계 역전
	    @Autowired
	    BoardService bs;
	    
	    // 01. 게시글 목록
	    @RequestMapping("/board/list")
	    public ModelAndView list() throws Exception{
	        BoardInfo board = null;
			List<BoardInfo> list = bs.getBoardInfoList(board);
	        // ModelAndView - 모델과 뷰
	        ModelAndView mav = new ModelAndView();
	        mav.setViewName("/list/board"); // 뷰를 list.jsp로 설정
	        mav.addObject("list", list); // 데이터를 저장
	        return mav; // list.jsp로 List가 전달된다.
	    }
}	
