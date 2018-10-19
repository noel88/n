package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.CommentVO;
import org.blog.service.CommentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * @author n
 * @Class name : AboutController.java
 */


@Controller
@RequestMapping("/comment/")
public class CommentController {

	/**
	 * about페이지 이동
	 *
	 * @param
	 * @return String
	 * @throws
	 */


	@Inject private CommentService service;


	@RequestMapping(value = "/comment_update_form", method = RequestMethod.GET)
	public String comment_update_form(CommentVO vo, Model model, @RequestParam("post_no") int no, @RequestParam("comment_no") int comment_no) {

		//TODO 코멘트 수정창 만들기
		vo.setComment_no(comment_no);
		vo.setPost_no(no);
		model.addAttribute("my_comment", service.my_comment(vo)) ;
		return "/comment/comment_update";

	}


	@RequestMapping(value = "/comment_update", method = RequestMethod.GET)
	public String comment_update(CommentVO vo, @RequestParam("post_no") int no) {

		service.comment_update(vo);
		return "redirect:/comment/success";
	}

	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String success() {

		return "/comment/success";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete() {

		return "/comment/delete";
	}


	@RequestMapping(value = "/comment_delete", method = RequestMethod.GET)
	public String comment_delete(CommentVO vo, @RequestParam("comment_no") int no, @RequestParam("post_no") int post) {

		service.comment_delete(no);
		return "redirect:/post/detail?post_no=" + post;

	}



}


