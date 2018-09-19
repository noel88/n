package org.blog.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.dao.UserDAO;
import org.blog.domain.UserVO;
import org.blog.util.SHA256;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

	@Inject
	private UserDAO dao;
	
	
	
	@Override
	public int join(UserVO vo) {
		SHA256 sha = new SHA256();
		vo.setUser_pwd(sha.getSHA256(vo.getUser_pwd()));
		vo.setUser_auth_yn("N");
		return dao.join(vo);
	}

	@Override
	public boolean loginCheck(UserVO vo, HttpSession session) {
		
		SHA256 sha = new SHA256();
		vo.setUser_pwd(sha.getSHA256(vo.getUser_pwd()));
		
		boolean isCheck = dao.login(vo);


		if(isCheck) {

			session.setAttribute("name", vo.getUser_name());


		}
		return isCheck;

	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate(); // 세션초기화
	}

	
}
