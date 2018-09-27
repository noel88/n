package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.BlogVO;
import org.blog.service.BlogService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/blog/")
public class BlogController {


	@Inject
	private BlogService service;




	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {

		return "blog/write";
	}

	@RequestMapping(value = "/create" , method = RequestMethod.GET)
	public String insert(BlogVO vo) throws Exception{

		int result = service.create(vo);

		if(result != 0) {

			return "redirect:/blog/list";
		}else {
			return "";
		}
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", service.list());
		return "blog/list";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public Model list_detail(@RequestParam("no") int no, Model model) {
		model.addAttribute(service.blog_detail(no));
		return model;
	}








}
