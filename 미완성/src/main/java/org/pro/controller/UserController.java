package org.pro.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.pro.domain.UserVo;
import org.pro.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/user/")
@Controller
public class UserController {


	@Inject
	private UserService service;


	@RequestMapping(value = "joinForm", method = RequestMethod.GET)
	public String joinForm() throws Exception {
		return "/user/joinForm";

	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(UserVo vo) throws Exception {
		service.add(vo);
		return "/user/loginForm";

	}

	@RequestMapping(value = "loginForm", method = RequestMethod.GET)
	public String loginForm() throws Exception {

		return "/user/loginForm";

	}
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(@ModelAttribute UserVo vo, HttpSession session) throws Exception {



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








}
