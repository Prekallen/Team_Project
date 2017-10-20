package com.food.web.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.food.web.user.dao.UserDao;
import com.food.web.user.dto.UserInfo;

@Service
public class UserServiceImpl implements UserService {

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
	public UserInfo selectUser(UserInfo user) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<UserInfo> selectUserList(UserInfo user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertUser(UserInfo user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateUser(UserInfo user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteUser(UserInfo user) {
		// TODO Auto-generated method stub
		return 0;
	}


}
