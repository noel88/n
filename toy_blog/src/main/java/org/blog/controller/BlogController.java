package org.blog.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrlPattern;

import java.io.File;
import java.util.Iterator;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.domain.BlogVO;
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

	/**
	 * 블로그 페이지 이동
	 *
	 * @param PostVO, Model, @RequestParam("name") 
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/user_blog", method = RequestMethod.GET)
	public String user_page(PostVO vo, Model model, @RequestParam("name") String user) {

		model.addAttribute("my",poservice.my_list(user));
		model.addAttribute("list_count",poservice.select_count_list(user));

		return "blog/user_blog";
	}
	

	/**
	 * 블로그 업데이트 페이지
	 *
	 * @param Model, HttpSession
	 * @return String
	 * @throws
	 */

	
	@RequestMapping(value = "/blog_update", method = RequestMethod.GET)
	public String user_blog_update(Model model, HttpSession session) {
		
		String name = (String)session.getAttribute("name");
		model.addAttribute("blog_info", service.blog_info(name));
		model.addAttribute("category", category.category_info(name));
		return "blog/user_blog_update";
	}
	
	@RequestMapping(value = "/profile_update", method = RequestMethod.GET)
	public String user_profile_update(Model model, HttpSession session) {
		
		String name = (String)session.getAttribute("name");
		model.addAttribute("blog_info", service.blog_info(name));
		model.addAttribute("category", category.category_info(name));
		return "blog/user_profile_update";
	}
	
	/**
	 * 블로그 카테고리 추가 액션
	 *
	 * @param Model, HttpSession, CategoryVO
	 * @return String
	 * @throws
	 */
	
	@RequestMapping(value = "/blog_category", method = RequestMethod.GET)
	public String user_blog_category(Model model, CategoryVO vo, HttpSession session) {
		
		category.category_insert(vo);
		return "redirect:/blog/blog_update";
	}
	
	/**
	 * 블로그 구독신청 액션
	 *
	 * @param Model, HttpSession, @RequestParam("name") 
	 * @return String
	 * @throws
	 */
	
	@RequestMapping(value = "/subscribe", method = RequestMethod.GET)
	public String blog_subscribe(Model model, @RequestParam("name") String user_name, HttpSession session) {
		
		SubscribeVO vo = new SubscribeVO();
		
		String name = (String)session.getAttribute("name");
		vo.setMy_blog_no(service.blog_no(name));
		vo.setSubscribe_blog_no(service.blog_no(user_name));
		
		sub.subscribe(vo);
		
		return "redirect:/user/page";
	}
	
	
	
	@RequestMapping(value = "/blog_info", method = RequestMethod.GET)
	public String blog_info(Model model, BlogVO vo, HttpSession session) {
		String name = (String)session.getAttribute("name");
		vo.setBlog_user(name);
		service.blog_info(vo);
		
		return "redirect:/user/page?category_no=-1";
	}
	
	@RequestMapping(value = "/profile_info", method = RequestMethod.POST)
	public String profile_info(Model model, BlogVO vo, HttpSession session) {
		String name = (String)session.getAttribute("name");
		vo.setBlog_user(name);
		service.profile_info(vo);
		
		return "redirect:/user/page?category_no=-1";
	}

	
	
	

	@RequestMapping(value = "/fileUpload/post") //ajax에서 호출하는 부분
    @ResponseBody
    public String upload(MultipartHttpServletRequest multipartRequest,BlogVO vo,HttpSession session) { //Multipart로 받는다.

		String name = (String)session.getAttribute("name");
        Iterator<String> itr =  multipartRequest.getFileNames();

        String filePath = "/Users/n/Desktop/img_test"; //설정파일로 뺀다.
        
        while (itr.hasNext()) { //받은 파일들을 모두 돌린다.


            MultipartFile mpf = multipartRequest.getFile(itr.next());

            String originalFilename = mpf.getOriginalFilename(); //파일명

            String fileFullPath = filePath+"/"+originalFilename; //파일 전체 경로

            try {
                //파일 저장
                mpf.transferTo(new File(fileFullPath)); //파일저장 실제로는 service에서 처리
                vo.setBlog_user(name);
                vo.setBlog_img(originalFilename);
                service.blog_img(vo);
                System.out.println("originalFilename => "+originalFilename);
                System.out.println("fileFullPath => "+fileFullPath);
            } catch (Exception e) {
                System.out.println("postTempFile_ERROR======>"+fileFullPath);
                e.printStackTrace();
            }

       }

        return "success";
	}	
	
        @RequestMapping(value = "/fileUpload/profile") //ajax에서 호출하는 부분
        @ResponseBody
        public String upload_profile(MultipartHttpServletRequest multipartRequest,BlogVO vo,HttpSession session) { //Multipart로 받는다.
        	
        	String name = (String)session.getAttribute("name");
        	Iterator<String> itr =  multipartRequest.getFileNames();
        	
        	String filePath = "/Users/n/Desktop/img_test"; //설정파일로 뺀다.
        	
        	while (itr.hasNext()) { //받은 파일들을 모두 돌린다.
        		
        		
        		MultipartFile mpf = multipartRequest.getFile(itr.next());
        		
        		String originalFilename = mpf.getOriginalFilename(); //파일명
        		
        		String fileFullPath = filePath+"/"+originalFilename; //파일 전체 경로
        		
        		try {
        			//파일 저장
        			mpf.transferTo(new File(fileFullPath)); //파일저장 실제로는 service에서 처리
        			vo.setBlog_user(name);
        			vo.setProfile_img(originalFilename);
        			service.profile_img(vo);
        			System.out.println("originalFilename => "+originalFilename);
        			System.out.println("fileFullPath => "+fileFullPath);
        		} catch (Exception e) {
        			System.out.println("postTempFile_ERROR======>"+fileFullPath);
        			e.printStackTrace();
        		}
        		
        	}
        	
        	return "success";
        	
        	

	}


}