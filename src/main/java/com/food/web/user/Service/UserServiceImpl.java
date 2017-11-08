package com.food.web.user.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.web.user.dao.UserDao;
import com.food.web.user.dto.UserInfo;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao ud;
	
	@Override
	public UserInfo login(UserInfo user) {
		UserInfo rUser = ud.selectUser(user);
		if(rUser!=null && rUser.getUserPwd().equals(user.getUserPwd())){
			return rUser;
		}
		return null;
	}

	@Override
	public int insertUser(UserInfo user) {
		return ud.insertUser(user);
	}

	@Override
	public int deleteUser(UserInfo user) {
		return ud.deletetUser(user);
	}
	
	@Override
	public UserInfo selectUser(UserInfo user) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}