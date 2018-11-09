package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.EventVO;
import org.blog.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author n
 * @Class name : AdminController.java
 */


@Controller
@RequestMapping("/admin/")
public class AdminController {

	@Inject private EventService service;

	/**
	 * admin페이지 이동
	 *
	 * @param
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage() {

		return "/admin/admin";
	}

	/**
	 * 이벤트 등록 액션
	 *
	 * @param EventVO
	 * @return String
	 * @throws
	 */

/*	@RequestMapping(value = "/event_create", method = RequestMethod.GET)
	public String admin_event(EventVO vo) {

		service.event(vo);
		return "/admin/admin";
	}*/


}


