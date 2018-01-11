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
	public List<ClassInfo> getClassInfo(HttpServletRequest req) {
		String str = req.getParameter("param");
		return cdao.selectClassInfo(str);
	}

	@Override
	public void insertClass(HttpServletRequest req) {
		String param = req.getParameter("param");
		ClassInfo ci = gs.fromJson(param, ClassInfo.class);
		int result = cdao.insertClass(ci);
		req.setAttribute("resStr", gs.toJson(checkValue(result)));
	}

	@Override
	public String deleteClass(HttpServletRequest req) {
		int ciNo = Integer.parseInt(req.getParameter("ciNo"));
		ClassInfo ci = new ClassInfo();
		ci.setCiNo(ciNo);
		int result = cdao.deleteClass(ci);

		return gs.toJson(checkValue(result));
	}

	@Override
	public String updateClass(HttpServletRequest req) {
		String param = req.getParameter("param");
		ClassInfo ci = gs.fromJson(param, ClassInfo.class);
		int result = cdao.updateClass(ci);

		return gs.toJson(checkValue(result));
	}

	@Override
	public Map<String, String> checkValue(int a) {

		Map<String, String> rm = new HashMap<String, String>();
		rm.put("msg", "실패했어 이유는 모르겠다!");
		rm.put("result", "no");
		if (a == 1) {
			rm.put("result", "ok");
			rm.put("msg", "성공!!!!");
		}

		return rm;
	}

}
