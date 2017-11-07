package com.food.web.user.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.food.web.user.dao.UserDao;
import com.food.web.user.dto.UserInfo;


@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao{

	@Override
	public UserInfo selectUser(UserInfo user) {
		return this.getSqlSession().selectOne("user.SELECT_USER", user);
	}

	@Override
	public int insertUser(UserInfo user) {
		return this.getSqlSession().insert("user.INSERT_USER", user);
	}


}
