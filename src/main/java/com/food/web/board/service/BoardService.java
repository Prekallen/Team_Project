package com.food.web.board.service;

import java.util.List;

import com.food.web.board.dto.BoardInfo;

public interface BoardService {
	public BoardInfo getBoardInfo(BoardInfo board);
	public List<BoardInfo> getBoardInfoList(BoardInfo board	);
	public int insertBoardInfoList(BoardInfo[] board);
	public int inserBoardInfo(BoardInfo board);
	public int updateBoardInfo(BoardInfo board);
	public int deleteBoardInfo(BoardInfo board);

}
