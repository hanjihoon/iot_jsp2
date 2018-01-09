package com.iot.test.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;
import com.iot.test.dao.ClassDAO;
import com.iot.test.dao.impl.ClassDAOImpl;
import com.iot.test.service.ClassService;
import com.iot.test.vo.ClassInfo;

public class ClassServiceImpl implements ClassService {
	private Gson gs = new Gson();
	private ClassDAO cdao = new ClassDAOImpl();
	@Override
	public List<ClassInfo> getClassList() {
		
		return cdao.selectClassList();
	}
	
	@Override
	public List<ClassInfo> getClassinfo() {
		
		return null;
	}

	
	@Override
	public void insertClass(HttpServletRequest req) {
		
		
	}

	@Override
	public String deleteClass(HttpServletRequest req) {
		int ciNo = Integer.parseInt(req.getParameter("ciNo"));
		ClassInfo ci = new ClassInfo();
		ci.setCiNo(ciNo);
		int result = cdao.deleteClass(ci);
		Map<String, String> rm = new HashMap<String, String>();
		rm.put("msg", "실패했어 이유는 모르겠다!");
		rm.put("result", "no");
		if (result == 1) {
			rm.put("result", "ok");
			rm.put("msg", "성공!!!!");
		}
		return gs.toJson(rm);
	}

	@Override
	public String updateClass(HttpServletRequest req) {

		return null;
	}


	


	

}
