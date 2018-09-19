package org.pro.controller;

import javax.inject.Inject;

import org.pro.domain.BoardVo;
import org.pro.service.BoardService;
import org.pro.service.ReplyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/board/")
@Controller
public class BoardController {


	@Inject
	private BoardService service;
	private ReplyService reservice;


	@RequestMapping(value = "boardCreateForm" , method = RequestMethod.GET)
	public String boardForm() throws Exception{
		return "/board/boardCreateForm";
	}

	@RequestMapping(value = "create" , method = RequestMethod.GET)
	public String boardInsert(BoardVo vo) throws Exception{

		service.add(vo);
		return "redirect:/board/boardList";
	}

	@RequestMapping(value = "boardList" , method = RequestMethod.GET)
	public void boardList(Model model) throws Exception{
		model.addAttribute("boardlist", service.view());

	}

	@RequestMapping(value = "boardDetails" , method = RequestMethod.GET)
	public Model boardDetail(@RequestParam("code") int code, Model model) throws Exception{
		//model.addAttribute("reply", reservice.view());
		model.addAttribute(service.selectOne(code));
		return model;

	}

	@RequestMapping(value = "boardDelete" , method = RequestMethod.GET)
	public String boardDelete(@RequestParam("code") int code) throws Exception{
		service.delete(code);
		return "redirect:/board/boardList";

	}
	@RequestMapping(value = "boardUpdate" , method = RequestMethod.GET)
	public String boardUpdateForm(BoardVo vo) throws Exception{
		return "/board/boardUpdate";

	}
	@RequestMapping(value = "update" , method = RequestMethod.GET)
	public String boardUpate(BoardVo vo) throws Exception{

		int result = service.update(vo);

		if(result == 1) {
			return "redirect:/board/boardList";
		}else {
			return "redirect:/board/boardDetails"; //에러사항출력
		}

	}





}
