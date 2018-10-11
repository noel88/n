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
@RequestMapping("/search/")
public class SearchController {

	@Inject private SearchService service;



	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search_page(SearchVO vo, Model model) {

		model.addAttribute("title",service.select_title(vo));
		model.addAttribute("context",service.select_context(vo));
		model.addAttribute("name",service.select_name(vo));
		model.addAttribute("title_cnt", service.cnt_title(vo));
		model.addAttribute("context_cnt", service.cnt_context(vo));
		model.addAttribute("name_cnt", service.cnt_name(vo));

		return "/search/search_list";
	}



}


