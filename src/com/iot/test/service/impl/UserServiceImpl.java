package com.iot.test.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.iot.test.dao.UserDAO;
import com.iot.test.dao.impl.UserDAOImpl;
import com.iot.test.service.UserService;
import com.iot.test.vo.UserClass;

public class UserServiceImpl implements UserService {
	private Gson gs = new Gson();
	private UserDAO ud = new UserDAOImpl();

	@Override
	public HashMap<String, Object> login(HttpServletRequest req, HttpServletResponse res) {
		UserClass uc = gs.fromJson(req.getParameter("param"), UserClass.class);
		UserClass checkUc = ud.selectUser(uc.getUiId());
		HashMap<String, Object> hm = new HashMap<String, Object>();
		hm.put("msg", "오 로그인 성공하셨네요!");
		hm.put("login", "ok");

		if (checkUc != null) {
			if (!checkUc.getUiPwd().equals(uc.getUiPwd())) {
				hm.put("msg", "비밀번호를 확인하세요~!");
				hm.put("login", "no");
			} else {
				Cookie cId = new Cookie("userId", uc.getUiId());
				cId.setPath("/");
				Cookie cSave = new Cookie("saveId", "" + uc.isSaveId());
				cSave.setPath("/");
				int maxAge = 0;
				if (uc.isSaveId()) {
					maxAge = 24 * 60 * 60;
				}
				cId.setMaxAge(maxAge);
				cSave.setMaxAge(maxAge);
				res.addCookie(cId);
				res.addCookie(cSave);
				HttpSession hs = req.getSession();
				hs.setAttribute("user", checkUc);

			}
		} else {
			hm.put("msg", "아이디를 확인하세요!");
			hm.put("login", "no");
		}
		return hm;
	}

	@Override
	public void logout(HttpServletRequest req) {
		HttpSession hs = req.getSession();
		hs.invalidate();
	}

	@Override
	public void signin(HttpServletRequest req) {
		String json = req.getParameter("param");
		UserClass uc = gs.fromJson(json, UserClass.class);
		int result = ud.insertUser(uc);
		req.setAttribute("resStr", gs.toJson(checkValue(result)));
	}

	@Override
	public ArrayList<UserClass> getUserList() {
		return ud.selectUserList();
	}

	@Override
	public ArrayList<UserClass> getUser(HttpServletRequest req) {

		return ud.searchUser(req.getParameter("str"));
	}

	@Override
	public String deleteUser(HttpServletRequest req) {
		int uiNo = Integer.parseInt(req.getParameter("uiNo"));
		UserClass uc = new UserClass();
		uc.setUiNo(uiNo);
		int result = ud.deleteUser(uc);
		return gs.toJson(checkValue(result));

	}

	@Override
	public String updateUser(HttpServletRequest req) {
		String param = req.getParameter("param");
		UserClass uc = gs.fromJson(param, UserClass.class);
		int result = ud.updateUser(uc);
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
