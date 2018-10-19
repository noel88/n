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
import org.blog.service.BlogService;
import org.blog.service.CategoryService;
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
@RequestMapping("/post/")
public class PostController {


	@Inject private PostService service;
	@Inject private CommentService coservice;
	@Inject private CategoryService category;
	@Inject private BlogService blog;



	/**
	 * 글쓰기 폼으로 이동
	 *
	 * @param
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(Model model, HttpSession session) {

		String name = (String)session.getAttribute("name");
		model.addAttribute("keyword", service.list());
		model.addAttribute("category", category.category_info(name));
		model.addAttribute("blog_info", blog.blog_no(name));

		return "post/write";
	}

	/**
	 * 글쓰기 등록을 위한 메소드
	 *
	 * 등록 처리가 완료되면 list 페이지 이동, [글 등록이 되지 않으면 error alert 출력 [미정]]
	 *
	 * @param postVO
	 * @return String
	 * @throws Exception
	 */

	@RequestMapping(value = "/create" , method = RequestMethod.POST)
	public String create(PostVO vo) {

		service.create(vo);
		String [] word = vo.getKeyword().split("#");

		WordVO vo1 = new WordVO();

		for (int i = 0; i < word.length; i++) {
			vo1.setWord(word[i]);
			if(vo1.getWord().equals("") == false) {
				int cnt = service.word_select(vo1);
					if(cnt == 0) {
						vo1.setWord_cnt(0);
			        	service.word_create(vo1);
			        }else {
			        	service.word_update(vo1);
			        }
		        }
		}

		return "redirect:/post/list";
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
		return "post/list";
	}

	/**
	 * 메인에서 키워드를 클릭하면 그 키워드와 연관된 블로그의 글을 찾아 목록으로 보여주는 페이지
	 *
	 * @param Model, @RequestParam("keyword")
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/tags", method = RequestMethod.GET)
	public String tag_list(Model model, @RequestParam("keyword") String keyword) {

		model.addAttribute("list", service.tag_list(keyword));
		return "post/tag_list";
	}

	/**
	 * 글 상세페이지
	 *
	 * 글 번호에 해당하는 글 내용, 댓글 목록, 댓글 카운트, like 개수 노출
	 *
	 * @param @RequestParam, Model
	 * @return
	 * @throws
	 */

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void list_detail(@RequestParam("post_no") int no, Model model, HttpSession session) {

		String name = (String)session.getAttribute("name");

		model.addAttribute(service.post_detail(no));
		model.addAttribute("comment", coservice.comment_list(no));
		model.addAttribute("count_like", service.like_cnt(no));
		model.addAttribute("blog_info", service.select_post_blog_no(no));
		model.addAttribute("my_info", blog.blog_info(name));
		model.addAttribute("category", category.select_category_name(no));


	}

	/**
	 * 글 수정 페이지
	 *
	 * 글 번호에 해당하는 글 내용을 그대로 가지고 감.
	 *
	 * @param @RequestParam, Model, postVO
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/updateForm", method = RequestMethod.GET)
	public String post_updateForm(@RequestParam("post_no") int no, PostVO vo, Model model) {
		model.addAttribute(service.post_detail(no));
		return "post/update";
	}

	/**
	 * 글 수정 로직 메소드
	 *
	 * 글 수정이 되면 list페이지 이동, [글 업데이트가 되지 않으면 예외처리 [미정]]
	 *
	 * @param @RequestParam, postVO
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String post_update(@RequestParam("post_no") int no, PostVO vo) {
		int result = service.update(vo);

		if(result != 0) {
			return "redirect:/post/success";
		}else {
			return "/post/error";
		}
	}

	/**
	 * 글 삭제[코멘트도 모두 삭제된다.]
	 *
	 * @param @RequestParam
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String post_delete(@RequestParam("post_no") int no) {
		service.delete(no);
		return "redirect:/post/success";

	}

	/**
	 * 코멘트 등록
	 *
	 * @param @RequestParam, CommentVO
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/comment", method = RequestMethod.GET)
	public String write_comment(CommentVO vo, @RequestParam("post_no") int no) {

		int result = coservice.comment(vo);
		if(result != 0) {
			// TODO 코멘트 등록 완료되면 alert 띄우기
			return "redirect:/post/detail?post_no=" + no;
		}else {
			return "/post/error";
		}

	}


	/**
	 * like버튼 누르면 카운트 증가
	 *
	 * 유저 한사람당 한 게시물만 클릭 가능하다. (중복안됨)
	 *
	 * @param @RequestParam("post_no"), HttpSession
	 * @return String
	 * @throws
	 */


	@RequestMapping(value = "/like", method = RequestMethod.GET)
	public String like(@RequestParam("post_no") int no, HttpSession session) {

		LikeVO vo = new LikeVO();
		String name = (String)session.getAttribute("name");
		vo.setLike_user(name);
		vo.setPost_no(no);
		int yn = service.like_yn(vo);

		if(yn == 0) {
			service.like(vo);
			return "post/like_success";
		}else {
			return "post/like_error";
		}
	}

	/**
	 * 비 로그인시 알림창 띄워줌. -> 로그인 페이지로 이동할수 있게.
	 *
	 * @param @RequestParam
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/loginCheck", method = RequestMethod.GET)
	public String loginCheck() {

		return "/post/loginCheck";

	}

	/**
	 * 에러페이지 알람창 -> 목록으로 이동함.
	 *
	 * @param
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String error() {

		return "/post/error";

	}

	/**
	 * 성공페이지 알람창 -> 목록으로 이동함.
	 *
	 * @param
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/success", method = RequestMethod.GET)
	public String success() {

		return "/post/success";

	}





	}


