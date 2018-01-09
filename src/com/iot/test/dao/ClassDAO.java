package com.iot.test.dao;

import java.util.List;

import javax.servlet.http.HttpServlet;

import com.iot.test.vo.ClassInfo;

public interface ClassDAO {
	public List<ClassInfo> selectClassList();

	public List<ClassInfo> selectClassInfo(int ciNo);
	
	public List<ClassInfo> selectClassInfo(String ciName);

	public int insertClass(ClassInfo ci);

	public int deleteClass(ClassInfo ci);

	public int updateClass(ClassInfo ci);
}
