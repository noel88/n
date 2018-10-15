package org.blog.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.domain.BlogVO;
import org.blog.domain.CategoryVO;
import org.blog.domain.PostVO;
import org.blog.domain.UserVO;
import org.blog.service.BlogService;
import org.blog.service.CategoryService;
import org.blog.service.PostService;
import org.blog.service.SubscribeService;
import org.blog.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author n
 * @Class name : UserController.java
 */

@Controller
@RequestMapping("/user/")
public class UserController {


	@Inject private UserService service;
	@Inject private PostService postservice;
	@Inject private BlogService blog;
	@Inject private CategoryService category;
	@Inject private SubscribeService sub;



	/**
	 * 회원가입 폼으로 이동
	 * @param
	 * @return String
	 */

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {

		return "user/join";
	}


	/**
	 * 회원가입 처리
	 *
	 * 회원가입이 완료가 되면 login페이지 이동 아니면 [error alert출력 [예정]]
	 *
	 * @param UserVO
	 * @return String
	 * @throws exception
	 */

	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String joinAction(UserVO vo) throws Exception {
		
		BlogVO vo1 = new BlogVO();
		CategoryVO vo2 = new CategoryVO();
		
		int result = service.join(vo);
		
		blog.blog_create(vo1);
		

		if(result > 0) {
			return "redirect:/user/login";
		}else {
			// TODO 회원가입이 되지 않으면 에러 alert출력 필요.
		}

		return "redirect:/user/login";
	}

	/**
	 * 회원 수정 메소드
	 *
	 * 수정이 완료되면 페이지 이동 아니면 [error alert출력 [예정]]
	 *
	 * @param UserVO
	 * @return String
	 * @throws exception
	 */

	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public String user_update(UserVO vo) throws Exception {

		int result = service.user_update(vo);

		if(result > 0) {
			return "redirect:/";
		}else {
			// TODO 회원가입이 되지 않으면 에 alert출력 필요.
		}
		return "redirect:/user/login";
	}

	/**
	 * 회원가입후 이메일 인증을 위한 이메일 보내는 메소드
	 *
	 * 회원이메일로 인증확인 URL보내기 AND USER TABLE에 AUTH_CODE UPDATE.
	 *
	 * @param String, Model
	 * @return String
	 * @throws exception
	 */

	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, Model model) throws Exception {
		service.userAuth(user_email);
		model.addAttribute("user_email", user_email);

		return "/user/emailConfirm";
	}

	/**
	 * 이름 중복을 확인하는 메소드
	 *
	 *
	 * @param UserVO, Model
	 * @return @ResponseBody, int
	 * @throws exception
	 */

	@RequestMapping(value = "nameCheck", method = { RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody int name_Check(UserVO vo, Model model) {
        return service.name_check(vo);
    }

	/**
	 * 이메일 중복을 확인하는 메소드
	 *
	 *
	 * @param UserVO, Model
	 * @return @ResponseBody, int
	 * @throws exception
	 */

	@RequestMapping(value = "emailCheck", method = { RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int email_Check(UserVO vo, Model model) {
		return service.email_check(vo);
	}

	/**
	 * 로그인 폼으로 이동
	 *
	 * @param
	 * @return
	 * @throws
	 */

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "user/login";
	}

	/**
	 * 로그인 액션 처리 메소드
	 *
	 * 로그인 확인이 되면 USER의 세션 정보를 가지고 메인페이지로 이동, 로그인 실패하면 로그인폼으로 이동.
	 *
	 * @param UserVO, HttpSession
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
	public String logincheck(@ModelAttribute UserVO vo, HttpSession session) {

		boolean isCheck = service.loginCheck(vo, session);

		if(isCheck == true) {
			model().attribute("user", vo);
			return "redirect:/";
		}else {
			return "/user/error";
		}

	}

	/**
	 * 로그아웃 처리를 위한 메소드
	 *
	 * 세션 초기화시킴
	 *
	 * @param HttpSession
	 * @return String
	 * @throws Exception
	 */

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logOut(HttpSession session) throws Exception {
		service.logout(session);
		return "redirect:/";

	}

	@RequestMapping(value = "delete", method = RequestMethod.GET)
	public String delete(HttpSession session) throws Exception {

		String name = (String)session.getAttribute("name");
		service.user_delete(name);
		session.invalidate();
		return "redirect:/";

	}

	/**
	 * 마이페이지
	 *
	 * 한 페이지에서 태그를 이용하여 이동, 나의 게시물 확인, 나의 덧글 확인, 나의 정보 수정, 회원 탈퇴.
	 *
	 * @param BlogVO, Model, HttpSession
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String user_page(PostVO vo, Model model, HttpSession session) {

		String name = (String)session.getAttribute("name");
		model.addAttribute("my",postservice.my_list(name));
		model.addAttribute("my_comment",postservice.my_comment(name));
		model.addAttribute("list_count",postservice.select_count_list(name));
		model.addAttribute("category", category.category_info(name));
		model.addAttribute("sub", sub.subcribe_list(name));

		return "user/user_page";
	}
	
	@RequestMapping(value = "/user_update", method = RequestMethod.GET)
	public String user_update(Model model, HttpSession session) {
	
		return "user/user_update";
	}
	





}
