package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.EventVO;
import org.blog.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





@Controller
@RequestMapping("/search/")
public class SearchController {

	@Inject private EventService service;



	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search_page() {

		return "";
	}



}


