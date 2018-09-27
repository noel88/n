package org.blog.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.domain.UserVO;
import org.blog.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user/")
public class UserController {


	@Inject
	private UserService service;


	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {

		return "user/join";
	}

	@RequestMapping(value = "/joinAction", method = RequestMethod.POST)
	public String joinAction(UserVO vo) throws Exception {

		int result = service.join(vo);

		if(result > 0) {
			return "redirect:/user/emailConfirmCheck";
		}else {
			//에러출력
		}

		return "redirect:/user/login";
	}



	@RequestMapping(value = "/emailConfirm", method = RequestMethod.GET)
	public String emailConfirm(String user_email, Model model) throws Exception { // 이메일인증
		service.userAuth(user_email);
		model.addAttribute("user_email", user_email);

		return "/user/emailConfirm";
	}


	@RequestMapping(value = "nameCheck", method = { RequestMethod.GET, RequestMethod.POST})
    public @ResponseBody int name_Check(UserVO vo, Model model) {
        return service.name_check(vo);
    }

	@RequestMapping(value = "emailCheck", method = { RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody int email_Check(UserVO vo, Model model) {
		return service.email_check(vo);
	}






	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		return "user/login";
	}

	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
	public String logincheck(@ModelAttribute UserVO vo, HttpSession session) {

		boolean isCheck = service.loginCheck(vo, session);

		if(isCheck == true) {
			model().attribute("user", vo);
			return "redirect:/";
		}else {
			return "/user/loginForm";
		}

	}

	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logOut(HttpSession session) throws Exception {
		service.logout(session);
		return "redirect:/";

	}

	@RequestMapping(value = "/page", method = RequestMethod.GET)
	public String user_page() {

		return "user/user_page";
	}





}
