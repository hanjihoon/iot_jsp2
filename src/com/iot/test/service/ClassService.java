package com.iot.test.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.iot.test.vo.ClassInfo;

public interface ClassService {

	public List<ClassInfo> getClassList();

	public List<ClassInfo> getClassInfo(HttpServletRequest req);

	public void insertClass(HttpServletRequest req);

	public String deleteClass(HttpServletRequest req);

	public String updateClass(HttpServletRequest req);
	
	public Map<String, String> checkValue(int a);
}
