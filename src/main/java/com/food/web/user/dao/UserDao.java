package com.food.web.user.dao;

import com.food.web.user.dto.UserInfo;

public interface UserDao {

	public UserInfo selectUser(UserInfo user);

	public int insertUser(UserInfo user);

	public int deletetUser(UserInfo user);


}
