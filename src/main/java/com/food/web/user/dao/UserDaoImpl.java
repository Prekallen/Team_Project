package com.food.web.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.food.web.user.dto.UserInfo;

@Repository
public class UserDaoImpl implements UserDao {

	@Override
	public UserInfo selectUser(UserInfo user) {
		return this.selectUser(user);
	}

	@Override
	public List<UserInfo> selectUserList(UserInfo user) {
		// TODO Auto-generated method stub
		return this.selectUserList(user);
	}

	@Override
	public int insertUser(UserInfo user) {
		// TODO Auto-generated method stub
		return this.insertUser(user);
	}

	@Override
	public int updateUser(UserInfo user) {
		// TODO Auto-generated method stub
		return this.updateUser(user);
	}

	@Override
	public int deleteUser(UserInfo user) {
		// TODO Auto-generated method stub
		return this.deleteUser(user);
	}

}
 