package org.lanqiao.service.impl;


import org.lanqiao.entity.User2;
import org.lanqiao.mapper.UserMapper;
import org.lanqiao.service.UserService;

public class UserServiceImpl implements UserService{
	private UserMapper userMapper;
	
	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	public User2 queryUserByName(String userName) {
		
		return userMapper.queryUserByName(userName);
	}

	public User2 queryUserByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public void addUser(User2 user) {
		// TODO Auto-generated method stub
		
	}

	public void addUserEmail(String email) {
		// TODO Auto-generated method stub
		
	}

	public void updateWithUserIDAndName(User2 user) {
		// TODO Auto-generated method stub
		
	}

	public void updateWithPassWord(User2 user) {
		// TODO Auto-generated method stub
		
	}

	public void deleteUserByName(String userName) {
		// TODO Auto-generated method stub
		
	}

	public void updateUser(User2 user) {
		// TODO Auto-generated method stub
		
	}

	public boolean isExist(String userName) {
		// TODO Auto-generated method stub
		return false;
	}

}
