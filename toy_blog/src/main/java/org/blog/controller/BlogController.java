package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.BlogVO;
import org.blog.domain.ReplyVO;
import org.blog.service.BlogService;
import org.blog.service.ReplyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


/**
 * @author n
 * @Class name : BlogController.java
 */

@Controller
@RequestMapping("/blog/")
public class BlogController {


	@Inject private BlogService service;
	@Inject private ReplyService reservice;


	/**
	 * 글쓰기 폼으로 이동
	 * 
	 * @param 
	 * @return String
	 * @throws 
	 */	

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write() {

		return "blog/write";
	}

	/**
	 * 글쓰기 등록을 위한 메소드
	 * 
	 * 등록 처리가 완료되면 list 페이지 이동, [글 등록이 되지 않으면 error alert 출력 [미정]]
	 * 
	 * @param BlogVO
	 * @return String
	 * @throws Exception
	 */	
	
	@RequestMapping(value = "/create" , method = RequestMethod.GET)
	public String insert(BlogVO vo) throws Exception{

		int result = service.create(vo);

		if(result != 0) {
			return "redirect:/blog/list";
		}else {
			// TODO 글 등록이 되지 않으면 예외처리 필요.
			return "";
		}
	}
	
	/**
	 * 게시글 목록 이동
	 * 
	 * @param Model
	 * @return String
	 * @throws 
	 */	

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model) {
		model.addAttribute("list", service.list());
		return "blog/list";
	}
	
	/**
	 * 글 상세페이지
	 * 
	 * 글 번호에 해당하는 글 내용, 댓글 목록, 댓글 카운트 노출
	 * 
	 * @param @RequestParam, Model
	 * @return String
	 * @throws 
	 */	
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public Model list_detail(@RequestParam("no") int no, Model model) {
		model.addAttribute(service.blog_detail(no));
		model.addAttribute("comment", reservice.comment_list(no));
		model.addAttribute("count", reservice.comment_count(no));
		
		return model;
	}
	
	/**
	 * 글 수정 페이지
	 * 
	 * 글 번호에 해당하는 글 내용을 그대로 가지고 감.
	 * 
	 * @param @RequestParam, Model, BlogVO
	 * @return String
	 * @throws 
	 */	
	
	@RequestMapping(value = "/updateForm", method = RequestMethod.GET)
	public String blog_updateForm(@RequestParam("no") int no, BlogVO vo, Model model) {
		model.addAttribute(service.blog_detail(no));
		return "blog/update";
	}
	
	/**
	 * 글 수정 로직 메소드
	 * 
	 * 글 수정이 되면 list페이지 이동, [글 업데이트가 되지 않으면 예외처리 [미정]]
	 * 
	 * @param @RequestParam, BlogVO
	 * @return String
	 * @throws 
	 */	
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String blog_update(@RequestParam("no") int no, BlogVO vo) {
		int result = service.update(vo);
		
		if(result != 0) {	
			return "redirect:/blog/list";
		}else {
			// TODO 글 업데이트가 되지 않으면 예외처리 필요.
			return "";
		}
	}
	
	/**
	 * 글 삭제
	 * 
	 * @param @RequestParam
	 * @return String
	 * @throws 
	 */	
	
	// FIXME 게시물 삭제 안되는것 확인. no값이 null로 들어감.
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String blog_delete(@RequestParam("no") int no) {
		service.delete(no);
		return "redirect:/blog/list";
		
	}

	/**
	 * 코멘트 등록
	 * 
	 * @param @RequestParam, ReplyVO
	 * @return String
	 * @throws 
	 */	

	@RequestMapping(value = "/comment", method = RequestMethod.GET)
	public String write_comment(ReplyVO vo, @RequestParam("blog_no") int no) {
	
		int result = reservice.comment(vo);	
		if(result != 0) {
			// TODO 코멘트 등록 완료되면 alert 띄우기 
			// FIXME 코멘트 등록후 상세페이지로 이동. [오류 해결]
			return "redirect:/blog/list";
		}else {
			// TODO comment 등록이 되지 않으면 예외처리 필요.
			return "";
		}
		
		
	}


	
	



}
