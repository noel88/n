package com.ntoday.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ntoday.dao.UserDAO;
import com.ntoday.domain.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Inject UserDAO dao;

	@Override
	public int signUpAction(UserVO vo) {
		return dao.signUpAction(vo);
	}

}
