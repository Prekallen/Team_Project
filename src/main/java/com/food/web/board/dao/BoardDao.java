package com.food.web.board.dao;

import java.util.List;

import com.food.web.board.dto.BoardInfo;

public interface BoardDao {
	public BoardInfo selectBoardInfo(BoardInfo board);
	public List<BoardInfo> selectBoardInfoList(BoardInfo board);
	public int insertBoardInfo(BoardInfo board);
	public int insertBoardInfoList(BoardInfo[] board);
	public int updateBoardInfo(BoardInfo board);
	public int deleteBoardInfo(BoardInfo board);
}
