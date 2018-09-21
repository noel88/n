package org.blog.dao;

import org.blog.domain.UserVO;

public interface UserDAO {

	
	public int join(UserVO vo);
	public void createAuthKey(String user_email, String user_authCode) throws Exception;
	public void userAuth(String user_email) throws Exception;
	public boolean login(UserVO vo);
	
}
