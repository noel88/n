package org.blog.dao;

import javax.inject.Inject;


import org.apache.ibatis.session.SqlSession;
import org.blog.domain.UserVO;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAOImpl implements UserDAO {

	
	@Inject
	private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.userMapper";
	

	
	@Override
	public int join(UserVO vo) {
		return sqlsession.insert(namespace + ".user_join", vo);
	}

	@Override
	public void createAuthKey(String user_email, String user_authCode) throws Exception {
		// TODO Auto-generated method stub
		UserVO vo = new UserVO();
		vo.setUser_authCode(user_authCode);
		vo.setUser_email(user_email);

		sqlsession.selectOne(namespace + ".createAuthKey", vo);
	
	}
	
	@Override
	public void userAuth(String user_email) throws Exception {
		sqlsession.update(namespace + ".userAuth", user_email);
	}
	
	
	

	@Override
	public boolean login(UserVO vo) {
		vo = sqlsession.selectOne(namespace + ".user_login", vo);
		boolean isCheck = (vo == null) ? false : true; 
		return isCheck;
	}


	
	
}
