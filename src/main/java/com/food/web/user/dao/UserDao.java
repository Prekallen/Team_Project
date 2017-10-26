package com.food.web.user.dao;

import java.util.List;

import com.food.web.user.dto.UserInfo;

public interface UserDao {

	public UserInfo selectUser(UserInfo user);

	public List<UserInfo> selectUserList(UserInfo user);
	
	public int insertUser(UserInfo user);
	
	public int deletetUser(UserInfo user);
	
	public int updateUser(UserInfo user);

}
