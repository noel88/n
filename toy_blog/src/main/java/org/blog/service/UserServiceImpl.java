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


	/**
	 * 회원가입
	 *
	 * 비밀번호 암호화, 인증 default = 'N', 인증키 생성, 인증키 저장, 사용자에게 인증 메일 보내기
	 *
	 * @see org.blog.service.UserService#join(org.blog.damain.UserVO)
	 * @param UserVO
	 * @return int
	 * @throws
	 */

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
							"블로그를 더욱 편하게 이용하실 수 있습니다.</h2>").append("<a href='http://localhost:8090/lxa/user/emailConfirm?user_email=").append(vo.getUser_email()).append("&key=").append(key).append("' target='_blenk'><button>이메일 인증하기</button></a>").toString());
/*		"블로그를 더욱 편하게 이용하실 수 있습니다.</h2>").append("<a href='http://bigmit.iptime.org/lxa/user/emailConfirm?user_email=").append(vo.getUser_email()).append("&key=").append(key).append("' target='_blenk'><button>이메일 인증하기</button></a>").toString());
*/			sendMail.setFrom("xiah0526@gmail.com", "관리자");
			sendMail.setTo(vo.getUser_email());
			sendMail.send();

		return dao.join(vo);

	}

	/**
	 * 회원 인증 체크 메소드
	 *
	 * @see org.blog.service.UserService#userAuth(String)
	 * @param String
	 * @return void
	 * @throws Exception
	 */

	@Override
	public void userAuth(String userEmail) throws Exception {
		dao.userAuth(userEmail);
	}

	/**
	 * 로그인 체크 메소드
	 *
	 * 로그인이 완료되면 이름은 세션에 저장됨.
	 *
	 * @see org.blog.service.UserService#loginCheck(org.blog.domain.UserVO, HttpSession)
	 * @param UserVO, HttpSession
	 * @return boolean
	 * @throws Exception
	 */

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

	/**
	 * 로그아웃
	 *
	 * 세션 초기화
	 *
	 * @see org.blog.service.UserService#logout(HttpSession)
	 * @param HttpSession
	 * @return void
	 * @throws
	 */

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	/**
	 * 이름 중복 체크 메소드
	 *
	 * @see org.blog.service.UserService#name_check(org.blog.domain.UserVO)
	 * @param UserVO
	 * @return int
	 * @throws
	 */

	@Override
	public int name_check(UserVO vo) {
		return dao.name_check(vo);
	}

	/**
	 * 이메일 중복 체크 메소드
	 *
	 * @see org.blog.service.UserService#email_check(org.blog.domain.UserVO)
	 * @param UserVO
	 * @return int
	 * @throws
	 */

	@Override
	public int email_check(UserVO vo) {
		return dao.email_check(vo);
	}

	/**
	 * 회원정보 수정 메소드
	 *
	 * @see org.blog.service.UserService#email_check(org.blog.domain.UserVO)
	 * @param UserVO
	 * @return int
	 * @throws
	 */

	@Override
	public int user_update(UserVO vo) {
		return dao.user_update(vo);
	}

	@Override
	public void user_delete(String name) {
		dao.user_delete(name);

	}



}
