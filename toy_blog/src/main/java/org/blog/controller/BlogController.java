package org.blog.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.blog.domain.BlogVO;
import org.blog.domain.ReplyVO;
import org.blog.service.BlogService;
import org.blog.service.ReplyService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/blog/")
public class BlogController {


	@Inject private BlogService service;
	@Inject private ReplyService reservice;




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
		model.addAttribute("comment", reservice.comment_list(no));
		model.addAttribute("count", reservice.comment_count(no));
		
		return model;
	}
	
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET)
	public String blog_updateForm(@RequestParam("no") int no, BlogVO vo, Model model) {
		model.addAttribute(service.blog_detail(no));
		return "blog/update";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String blog_update(@RequestParam("no") int no, BlogVO vo) {
		int result = service.update(vo);
		
		if(result != 0) {	
			return "redirect:/blog/list";
		}else {
			return "";
		}
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String blog_delete(@RequestParam("no") int no) {
		service.delete(no);
		return "redirect:/blog/list";
		
	}


	@RequestMapping(value = "/comment", method = RequestMethod.GET)
	public String write_comment(ReplyVO vo, @RequestParam("blog_no") int no) {
	
		int result = reservice.comment(vo);	
		if(result != 0) {

			return "redirect:/blog/list";
		}else {
			return "";
		}
		
		
	}


	
	



}
