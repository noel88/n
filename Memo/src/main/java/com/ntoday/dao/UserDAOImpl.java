package com.ntoday.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ntoday.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject private SqlSession sqlsession;
	private static String namespace = "com.ntoday.mapper.userMapper";

	@Override
	public int signUpAction(UserVO vo) {
		return sqlsession.insert(namespace + ".signUpAction", vo);
	}


}
