package org.blog.dao;

import org.blog.domain.UserVO;

public interface UserDAO {

	
	public int join(UserVO vo);
	public boolean login(UserVO vo);
	
}
