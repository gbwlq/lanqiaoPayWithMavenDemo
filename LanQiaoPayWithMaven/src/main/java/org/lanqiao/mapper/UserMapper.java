package org.lanqiao.mapper;

import org.lanqiao.entity.User2;

public interface UserMapper {
	public User2 queryUserByName(String userName);//根据用户名查询
	public User2 queryUserByEmail(String email);//查询电子邮箱
	public void addUser(User2 user);//增加
	public void addUserEmail(String email);//增加电子邮箱
	public void updateWithUserIDAndName(User2 user);//身份证号，姓名
	public void updateWithPassWord(User2 user);//密码
	public void deleteUserByName(String userName);//删除
	public void updateUser(User2 user);//修改
	
}
