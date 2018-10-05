package org.blog.controller;

import javax.inject.Inject;

import org.blog.domain.EventVO;
import org.blog.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;





@Controller
@RequestMapping("/admin/")
public class AdminController {

	@Inject private EventService service;



	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage() {

		return "/admin/admin";
	}

	@RequestMapping(value = "/event_create", method = RequestMethod.GET)
	public String admin_event(EventVO vo) {

		service.event(vo);
		return "/admin/admin";
	}


}


