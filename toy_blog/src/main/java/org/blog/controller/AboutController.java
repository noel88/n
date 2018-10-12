package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.EventVO;
import org.blog.domain.SearchVO;
import org.blog.service.EventService;
import org.blog.service.SearchService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
@RequestMapping("/about/")
public class AboutController {


	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "about/about";
	}



}


