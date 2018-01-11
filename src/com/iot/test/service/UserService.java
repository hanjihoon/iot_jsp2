package com.iot.test.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iot.test.vo.UserClass;

public interface UserService {
	public ArrayList<UserClass> getUserList();
	
	public ArrayList<UserClass> getUser(HttpServletRequest req);

	public HashMap<String, Object> login(HttpServletRequest req, HttpServletResponse res);

	public void logout(HttpServletRequest req);

	public void signin(HttpServletRequest req);

	public String deleteUser(HttpServletRequest req);

	public String updateUser(HttpServletRequest req);
	
	public Map<String, String> checkValue(int a);
}
