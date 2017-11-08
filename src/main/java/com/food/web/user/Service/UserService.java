package com.food.web.user.Service;


import com.food.web.user.dto.UserInfo;



public interface UserService {
	public UserInfo login(UserInfo user);

	public UserInfo selectUser(UserInfo user);
	
	public int insertUser(UserInfo user);

	public int deleteUser(UserInfo user);

}
