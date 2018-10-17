package org.blog.controller;





import javax.inject.Inject;

import org.blog.service.BlogService;
import org.blog.service.PostService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {

	@Inject PostService service;
	@Inject BlogService blog;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * 메인 페이지
	 *
	 * @param Model
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		model.addAttribute("list", service.list());
		model.addAttribute("blog_info", blog.blog());
		model.addAttribute("keyword", service.word_cnt_list());

		return "home";
	}

}
