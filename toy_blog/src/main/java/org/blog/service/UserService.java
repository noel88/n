package org.blog.service;

import javax.servlet.http.HttpSession;

import org.blog.domain.UserVO;

public interface UserService {

	
	
	public int join(UserVO vo);
	public boolean loginCheck(UserVO vo, HttpSession session);
	public void logout(HttpSession session);
	
	
	
}
