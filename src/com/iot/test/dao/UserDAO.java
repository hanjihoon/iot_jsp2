package com.iot.test.dao;

import java.util.ArrayList;

import com.iot.test.vo.UserClass;

public interface UserDAO {
	public ArrayList<UserClass> selectUserList();

	public UserClass selectUser(int uiNo);

	public UserClass selectUser(String uiId);

	public int insertUser(UserClass uc);

	public int updateUser(UserClass uc);

	public int deleteUser(UserClass uc);
}
