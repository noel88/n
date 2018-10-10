package org.blog.controller;

import java.io.File;
import java.util.Iterator;

import javax.inject.Inject;

import org.blog.domain.BlogVO;
import org.blog.domain.ImgVO;
import org.blog.domain.ReplyVO;
import org.blog.service.BlogService;
import org.blog.service.ReplyService;
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

	@RequestMapping(value = "/create" , method = RequestMethod.POST)
			public String create(BlogVO vo) {

		        service.create(vo);
		        return "redirect:/blog/list";
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
	 * 글 번호에 해당하는 글 내용, 댓글 목록, 댓글 카운트, like 개수 노출
	 *
	 * @param @RequestParam, Model
	 * @return
	 * @throws
	 */

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void list_detail(@RequestParam("no") int no, Model model) {
		model.addAttribute(service.blog_detail(no));
		model.addAttribute("comment", reservice.comment_list(no));
		model.addAttribute("count", reservice.comment_count(no));
		model.addAttribute("like", service.select_like_count(no));


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
			return "redirect:/blog/success";
		}else {
			return "/blog/error";
		}
	}

	/**
	 * 글 삭제
	 *
	 * @param @RequestParam
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String blog_delete(@RequestParam("no") int no) {
		service.delete(no);
		return "redirect:/blog/success";

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
			return "redirect:/blog/detail?no=" + no;
		}else {
			return "/blog/error";
		}

	}

	/**
	 * like버튼 누르면 카운트 증가
	 *
	 * @param @RequestParam
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/like_count", method = RequestMethod.GET)
	public String like_count(@RequestParam("no") int no) {

		service.like_cnt(no);
		return "redirect:/blog/detail?no=" + no;

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

		return "/blog/loginCheck";

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

		return "/blog/error";

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

		return "/blog/success";

	}




//	@RequestMapping(value = "/fileUpload/post") //ajax에서 호출하는 부분
//    @ResponseBody
//    public String upload(MultipartHttpServletRequest multipartRequest) { //Multipart로 받는다.
//
//        Iterator<String> itr =  multipartRequest.getFileNames();
//
//        String filePath = "/Users/n/Desktop/img_test"; //설정파일로 뺀다.
//        ImgVO vo = new ImgVO();
//        while (itr.hasNext()) { //받은 파일들을 모두 돌린다.
//
//            /* 기존 주석처리
//            MultipartFile mpf = multipartRequest.getFile(itr.next());
//            String originFileName = mpf.getOriginalFilename();
//            System.out.println("FILE_INFO: "+originFileName); //받은 파일 리스트 출력'
//            */
//
//            MultipartFile mpf = multipartRequest.getFile(itr.next());
//
//            String originalFilename = mpf.getOriginalFilename(); //파일명
//            vo.setBlog_img1(originalFilename);
//
//            String fileFullPath = filePath+"/"+originalFilename; //파일 전체 경로
//
//            try {
//                //파일 저장
//                mpf.transferTo(new File(fileFullPath)); //파일저장 실제로는 service에서 처리
//                System.out.println("originalFilename => "+originalFilename);
//                System.out.println("fileFullPath => "+fileFullPath);
//
//            } catch (Exception e) {
//                System.out.println("postTempFile_ERROR======>"+fileFullPath);
//                e.printStackTrace();
//            }
//
//       }
//
//        return "success";

	}


