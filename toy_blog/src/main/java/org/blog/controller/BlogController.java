package org.blog.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrlPattern;

import java.io.File;
import java.util.Iterator;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.domain.CategoryVO;
import org.blog.domain.CommentVO;
import org.blog.domain.EventEntryVO;
import org.blog.domain.ImgVO;
import org.blog.domain.LikeVO;
import org.blog.domain.PostVO;
import org.blog.domain.SubscribeVO;
import org.blog.domain.WordVO;
import org.blog.service.BlogService;
import org.blog.service.CategoryService;
import org.blog.service.CommentService;
import org.blog.service.PostService;
import org.blog.service.SubscribeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;


/**
 * @author n
 * @Class name : BlogController.java
 */

@Controller
@RequestMapping("/blog/")
public class BlogController {


	@Inject private PostService poservice;
	@Inject private CommentService coservice;
	@Inject private CategoryService category;
	@Inject private BlogService service;
	@Inject private SubscribeService sub;


	@RequestMapping(value = "/user_blog", method = RequestMethod.GET)
	public String user_page(PostVO vo, Model model, @RequestParam("name") String user) {

		model.addAttribute("my",poservice.my_list(user));
		model.addAttribute("list_count",poservice.select_count_list(user));

		return "blog/user_blog";
	}

	@RequestMapping(value = "/blog_update", method = RequestMethod.GET)
	public String user_blog_update(Model model, HttpSession session) {
		
		String name = (String)session.getAttribute("name");
		model.addAttribute("blog_info", service.blog_info(name));
		model.addAttribute("category", category.category_info(name));
		return "blog/user_blog_update";
	}
	
	@RequestMapping(value = "/blog_category", method = RequestMethod.GET)
	public String user_blog_category(Model model, CategoryVO vo, HttpSession session) {
		
		category.category_insert(vo);
		
		return "redirect:/blog/blog_update";
	}
	
	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public String blog_subscribe(Model model, @RequestParam("name") String user_name, HttpSession session) {
		
		SubscribeVO vo = new SubscribeVO();
		
		String name = (String)session.getAttribute("name");
		 
		vo.setMy_blog_no(service.blog_no(name));
		vo.setSubscribe_blog_no(service.blog_no(user_name));
		
		return "redirect:/blog/blog_update";
	}

	
	
	

	}


