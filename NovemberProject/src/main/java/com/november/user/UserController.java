package com.november.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
/*@RequestMapping("/november/")*/
public class UserController {

	@Autowired private UserService service;

	@RequestMapping(value = "/user/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		return "user/joinForm";
	}

	@RequestMapping(value = "/user/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		return "user/loginForm";
	}

	@RequestMapping(value = "/user/joinAction", method = RequestMethod.GET)
	public String joinAction(UserVO vo) {
		service.userJoin(vo);
		return "redirect:/";
	}

	@RequestMapping(value = "/user/loginAction", method = RequestMethod.GET)
	public String loginAction() {
		return "/";
	}

}
