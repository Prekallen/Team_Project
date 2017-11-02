package com.food.web.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.food.web.board.dto.BoardInfo;

@Repository
public class BoardDaoImpl implements BoardDao{
	

	@Override
	public BoardInfo selectBoardInfo(BoardInfo board) {
		return SqlSession.selectOne("BOARD.SELECT_BOARDINFO");
	}

	@Override
	public List<BoardInfo> selectBoardInfoList(BoardInfo board) {
		return getSqlSession().selectList("board.SELECT_BOARDINFO_LIST");
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
