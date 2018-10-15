package org.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * @author n
 * @Class name : AboutController.java
 */


@Controller
@RequestMapping("/about/")
public class AboutController {

	/**
	 * about페이지 이동
	 *
	 * @param
	 * @return String
	 * @throws
	 */
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {
		return "about/about";
	}



}


