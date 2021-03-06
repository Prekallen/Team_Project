package com.food.web.board.dao;

import java.util.List;


import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.food.web.board.dto.BoardInfo;

@Repository
public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDao{
	

	@Override
	public BoardInfo selectBoardInfo(int bNum) {
		return getSqlSession().selectOne("board.SELECT_BOARDINFO", bNum);
	}

	@Override
	public List<BoardInfo> selectBoardInfoList(BoardInfo board) {
		return getSqlSession().selectList("board.SELECT_BOARDINFO_LIST",board);
	}



	@Override
	public int insertBoardInfo(BoardInfo board) {
		return getSqlSession().insert("board.INSERT_BOARDINFO",board);
	}

	@Override
	public int updateBoardInfo(BoardInfo board) {
		return getSqlSession().update("board.UPDATE_BOARDINFO",board);
	}

	@Override
	public int deleteBoardInfo(BoardInfo board) {
		return getSqlSession().delete("board.DELETE_BOARDINFO",board);
	}

	@Override
	public int insertBoardInfoList(BoardInfo[] board) {
		return this.insertBoardInfoList(board);
	}

}
