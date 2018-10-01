package org.blog.service;


import javax.servlet.http.HttpSession;

import org.blog.domain.UserVO;

public interface UserService {



	public int join(UserVO vo) throws Exception;
	public int user_update(UserVO vo);
	public void userAuth(String userEmail) throws Exception;
	public boolean loginCheck(UserVO vo, HttpSession session);
	public void logout(HttpSession session);
	public int name_check(UserVO vo);
	public int email_check(UserVO vo);




}
