package org.lanqiao.service;

import org.lanqiao.entity.User2;

public interface UserService {
	public User2 queryUserByName(String userName);
	public User2 queryUserByEmail(String email);
	public void addUser(User2 user);//增加
	public void addUserEmail(String email);//电子邮箱
	public void updateWithUserIDAndName(User2 user);//身份证号，姓名
	public void updateWithPassWord(User2 user);//密码
	public void deleteUserByName(String userName);//删除
	public void updateUser(User2 user);//修改
	public boolean isExist(String userName);//判断用户是否存在
//	public boolean passwordIsRight(String userName,String password);//判断密码是否正确
}
