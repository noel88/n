package org.blog.dao;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.blog.domain.UserVO;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAOImpl implements UserDAO {

	
	@Inject
	private SqlSession sqlsession;
	private String namespace = "org.blog.mapper.userMapper";
	

	
	@Override
	public int join(UserVO vo) {
		return sqlsession.insert(namespace + ".user_join", vo);
	}


	@Override
	public boolean login(UserVO vo) {
		vo = sqlsession.selectOne(namespace + ".user_login", vo);
		boolean isCheck = (vo == null) ? false : true; 
		return isCheck;
	}


	
	
}
