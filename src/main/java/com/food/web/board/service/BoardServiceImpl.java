package com.food.web.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.web.board.dao.BoardDao;
import com.food.web.board.dto.BoardInfo;

@Service 
public class BoardServiceImpl implements BoardService{
	@Autowired
	BoardDao bdao;

	@Override
	public BoardInfo getBoardInfo(BoardInfo board) {
		return bdao.selectBoardInfo(board);
	}

	@Override
	public List<BoardInfo> getBoardInfoList(BoardInfo board) {
		return bdao.selectBoardInfoList(board);
	}

	@Override
	public int insertBoardInfoList(BoardInfo[] board) {
		return bdao.insertBoardInfoList(board);
	}

	@Override
	public int insertBoardInfo(BoardInfo board) {
		return bdao.insertBoardInfo(board);
	}

	@Override
	public int updateBoardInfo(BoardInfo board) {
		return bdao.updateBoardInfo(board);
	}

	@Override
	public int deleteBoardInfo(BoardInfo board) {
		return bdao.deleteBoardInfo(board);
	}

}
