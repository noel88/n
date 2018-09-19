package org.pro.service;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.pro.dao.UserDAO;
import org.pro.domain.UserVo;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImp implements UserService{

	@Inject
	private UserDAO dao;




	@Override
	public int add(UserVo vo) {
		 int result = dao.add(vo);
		 return result;
	}

	@Override
	public boolean loginCheck(UserVo vo, HttpSession session) {
		boolean isCheck = dao.loginCheck(vo);


		if(isCheck) {

			session.setAttribute("id", vo.getId());
			session.setAttribute("password", vo.getPassword());

		}
		return isCheck;

	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate(); // 세션초기화
	}


}
