package org.blog.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.blog.domain.EventEntryVO;
import org.blog.domain.EventVO;
import org.blog.service.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/event/")
public class EventController {

	@Inject EventService service;

	@RequestMapping(value = "/event_page", method = RequestMethod.GET)
	public String eventList(Model model) {
		model.addAttribute("event", service.list());

		return "/event/event";
	}

	@RequestMapping(value = "/event_write", method = RequestMethod.GET)
	public String event_write() {

		return "/event/event_write";
	}

	@RequestMapping(value = "/event_cal", method = RequestMethod.GET)
	public void event_cal(Model model) {

		model.addAttribute("event", service.list());
	}

	@RequestMapping(value = "/event_detail", method = RequestMethod.GET)
	public void list_detail(@RequestParam("event_no") int no, Model model) {
		model.addAttribute(service.select_event(no));
		model.addAttribute("cnt", service.entry_count(no));

	}



	@RequestMapping(value = "/entry", method = RequestMethod.GET)
	public String entry(@RequestParam("event_no") int no, HttpSession session) {

		EventEntryVO vo = new EventEntryVO();

		String name = (String)session.getAttribute("name");
		vo.setEvent_no(no);
		vo.setUser_name(name);
		int yn = service.entry_yn(vo);

		if(yn == 0) {
			service.entry(vo);
			return "event/success";

		}else {

			return "event/error";
		}

	}


/*	@RequestMapping(value = "/entry", method = RequestMethod.GET)
	public String entry(@RequestParam("event_no") int no, HttpSession session, EventEntryVO vo) {

		String name = (String)session.getAttribute("name");
		vo.setEvent_no(no);
		vo.setUser_name(name);


			service.entry(vo);
			return "event/success";

		}
*/

	@RequestMapping(value = "/event_succee", method = RequestMethod.GET)
	public String event_success() {

		return "redirect:/event/success";
	}

	@RequestMapping(value = "/event_error", method = RequestMethod.GET)
	public String event_error() {

		return "redirect:/event/errorr";
	}



}
