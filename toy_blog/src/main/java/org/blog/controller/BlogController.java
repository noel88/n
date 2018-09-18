package org.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/blog/")
public class BlogController {

	
	
	

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {

		return "blog/write";
	}

	
	
	
	
	
	
	
}
