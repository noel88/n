package org.blog.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrlPattern;

import java.io.File;
import java.util.Iterator;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.domain.CommentVO;
import org.blog.domain.EventEntryVO;
import org.blog.domain.ImgVO;
import org.blog.domain.LikeVO;
import org.blog.domain.PostVO;
import org.blog.domain.WordVO;
import org.blog.service.CommentService;
import org.blog.service.PostService;
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


	@RequestMapping(value = "/user_blog", method = RequestMethod.GET)
	public String user_page(PostVO vo, Model model, @RequestParam("name") String user) {

		model.addAttribute("my",poservice.my_list(user));
		model.addAttribute("list_count",poservice.select_count_list(user));

		return "blog/user_blog";
	}



	}


