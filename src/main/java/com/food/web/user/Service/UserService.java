package com.food.web.user.Service;


import java.util.List;

import com.food.web.user.dto.UserInfo;



public interface UserService {
	public UserInfo login(UserInfo user);

	public UserInfo selectUser(UserInfo user);

	public List<UserInfo> selectUserList(UserInfo user);
	
	public int insertUser(UserInfo user);
	
	public int updatetUser(UserInfo user);
	
	public int deleteUser(UserInfo user);
}