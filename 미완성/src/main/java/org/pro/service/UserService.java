package org.pro.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.pro.domain.UserVo;

public interface UserService {




	public int add(UserVo vo);
	public boolean loginCheck(UserVo vo, HttpSession session);
	public void logout(HttpSession session);



}
