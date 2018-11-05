package com.ntoday.controller;


import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ntoday.service.MemoService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Inject private MemoService memo;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("memoList", memo.memoList());

		return "home";
	}

}
