package com.food.web.board.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.food.web.board.dto.BoardInfo;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Override
	public BoardInfo selectBoardInfo(BoardInfo board) {
		return this.selectBoardInfo(board);
	}

	@Override
	public List<BoardInfo> selectBoardInfoList(BoardInfo board) {
		return this.selectBoardInfoList(board);
	}

	@Override
	public int insertBoardInfo(BoardInfo board) {
		return this.insertBoardInfo(board);
	}

	@Override
	public int updateBoardInfo(BoardInfo board) {
		return this.updateBoardInfo(board);
	}

	@Override
	public int deleteBoardInfo(BoardInfo board) {
		return this.deleteBoardInfo(board);
	}

	@Override
	public int insertBoardInfoList(BoardInfo[] board) {
		return this.insertBoardInfoList(board);
	}

}
