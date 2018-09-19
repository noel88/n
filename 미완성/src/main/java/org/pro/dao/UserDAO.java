package org.pro.dao;

import java.util.List;


import org.pro.domain.UserVo;

public interface UserDAO {




	public int add(UserVo vo);
	public void remove(String id);
	public boolean update(String id, UserVo mem);
	public List<UserVo> getList();
	public List<UserVo> find(String id);
	public boolean loginCheck(UserVo vo);



}
