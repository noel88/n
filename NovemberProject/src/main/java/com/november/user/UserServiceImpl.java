package com.november.user;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired private UserDAO dao;


	@Override
	public void userJoin(UserVO vo) {
		dao.userJoin(vo);
	}



}
