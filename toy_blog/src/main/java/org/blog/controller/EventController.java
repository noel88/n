package org.blog.controller;

import javax.inject.Inject;

import org.blog.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/event/")
public class EventController {

	@Inject EventService service;

	@RequestMapping(value = "/event", method = RequestMethod.GET)
	public String eventList() {

		return "/event/eventList";
	}

	@RequestMapping(value = "/event_write", method = RequestMethod.GET)
	public String event_write() {

		return "/event/event_write";
	}

	@RequestMapping(value = "/event_cal", method = RequestMethod.GET)
	public Model event_cal(Model model) {

		model.addAttribute("event", service.list());
		return model;
	}





}
