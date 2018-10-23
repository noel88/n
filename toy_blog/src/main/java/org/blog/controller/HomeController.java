package org.blog.controller;





import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.blog.service.BlogService;
import org.blog.service.PostService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


@Controller
public class HomeController extends HandlerInterceptorAdapter{

	@Inject PostService service;
	@Inject BlogService blog;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * 메인 페이지
	 *
	 * @param Model
	 * @return String
	 * @throws
	 */


	  @Override
	    public boolean preHandle(HttpServletRequest request,
	            HttpServletResponse response, Object handler) throws Exception {
	        System.out.println("preHandle executed");
	        return true;
	    }
	  	//모든창에서 검색 자동완성되게끔.
	    @Override
	    public void postHandle(HttpServletRequest request,
	            HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
	    	modelAndView.addObject("lists", service.list());
	    	modelAndView.addObject("keywords", service.word_cnt_list());
	        System.out.println("postHandle executed");
	    }

	    @Override
	    public void afterCompletion(HttpServletRequest request,
	            HttpServletResponse response, Object handler, Exception ex) throws Exception {
	        System.out.println("afterCompletion executed");

	    }


	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		//model.addAttribute("lists", service.list());
		model.addAttribute("blog_info", blog.blog());
		model.addAttribute("keywords", service.word_cnt_list());

		return "home";
	}

}
