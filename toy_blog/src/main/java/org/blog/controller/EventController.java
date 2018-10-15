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

	
	/**
	 * 이벤트 목록 페이지
	 *
	 * @param Model
	 * @return String
	 * @throws
	 */
	
	@RequestMapping(value = "/event_page", method = RequestMethod.GET)
	public String eventList(Model model) {
		model.addAttribute("event", service.list());

		return "/event/eventList";
	}
	
	/**
	 * 이벤트 등록 페이지
	 *
	 * @param 
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/event_write", method = RequestMethod.GET)
	public String event_write() {

		return "/event/event_write";
	}
	
	/**
	 * 이벤트 캘린더 페이지 [삭제]
	 *
	 * @param Model
	 * @return String
	 * @throws
	 */

	@RequestMapping(value = "/event_cal", method = RequestMethod.GET)
	public void event_cal(Model model) {

		model.addAttribute("event", service.list());
	}
	
	/**
	 * 이벤트 상세 페이지
	 *
	 * @param Model, @RequestParam("event_no") 
	 * @return void
	 * @throws
	 */

	@RequestMapping(value = "/event_detail", method = RequestMethod.GET)
	public void list_detail(@RequestParam("event_no") int no, Model model) {
		model.addAttribute(service.select_event(no));
		model.addAttribute("cnt", service.entry_count(no));

	}

	/**
	 * 이벤트 응모 액션[이벤트 응모는 유저당 이벤트 하나씩만 가능]
	 *
	 * @param @RequestParam("event_no"), HttpSession
	 * @return String
	 * @throws
	 */
	
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
