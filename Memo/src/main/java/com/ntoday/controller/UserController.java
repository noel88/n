package com.ntoday.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ntoday.domain.UserVO;
import com.ntoday.service.MemoService;
import com.ntoday.service.UserService;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Inject private UserService service;


	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "user/loginForm";
	}
	@RequestMapping(value = "/loginAction", method = RequestMethod.GET)
	public String loginAction(UserVO vo) {

		service.signUpAction(vo);
		return "/";
	}
	@RequestMapping(value = "/signUp", method = RequestMethod.GET)
	public String signUp() {
		return "user/signUpForm";
	}



}
