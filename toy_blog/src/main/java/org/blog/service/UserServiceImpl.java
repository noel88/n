package org.blog.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.dao.UserDAO;
import org.blog.domain.UserVO;
import org.blog.util.MailHandler;
import org.blog.util.SHA256;
import org.blog.util.TempKey;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService{

	@Inject private UserDAO dao;
	@Inject private JavaMailSender mailSender;

	@Transactional
	@Override
	public int join(UserVO vo) throws Exception {
		SHA256 sha = new SHA256();
		vo.setUser_pwd(sha.getSHA256(vo.getUser_pwd()));
		vo.setUser_auth_yn("N");


		String key = new TempKey().getKey(50, false); // 인증키 생성

		dao.createAuthKey(vo.getUser_email(), key); // 인증키 DB저장

		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject("[BLOG 서비스 이메일 인증]");
		sendMail.setText(
				new StringBuffer().append("<h2>이메일을 인증하시면 블로그 글 쓰기, 계정 찾기 등\n" +
						"블로그를 더욱 편하게 이용하실 수 있습니다.</h2>").append("<a href='http://localhost:8080/user/emailConfirm?user_email=").append(vo.getUser_email()).append("&key=").append(key).append("' target='_blenk'><button>이메일 인증하기</button></a>").toString());
		sendMail.setFrom("xiah0526@gmail.com", "관리자");
		sendMail.setTo(vo.getUser_email());
		sendMail.send();

		return dao.join(vo);



	}


	@Override
	public void userAuth(String userEmail) throws Exception {
		dao.userAuth(userEmail);
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


	@Override
	public int name_check(UserVO vo) {
		return dao.name_check(vo);
	}


	@Override
	public int email_check(UserVO vo) {
		return dao.email_check(vo);
	}


}
