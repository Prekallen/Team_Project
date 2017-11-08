package com.food.web.board.service;

import java.util.List;

import com.food.web.board.dto.BoardInfo;

public interface BoardService {
	public BoardInfo getBoardInfo(int bNum);
	public List<BoardInfo> getBoardInfoList(BoardInfo board	);
	public int insertBoardInfoList(BoardInfo[] board);
	public int insertBoardInfo(BoardInfo board);
	public int updateBoardInfo(BoardInfo board);
	public int deleteBoardInfo(BoardInfo board);

}
