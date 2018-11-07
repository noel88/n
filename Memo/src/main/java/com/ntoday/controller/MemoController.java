package com.ntoday.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ntoday.domain.MemoVO;
import com.ntoday.service.MemoService;

@Controller
@RequestMapping("/memo/")
public class MemoController {

	@Inject private MemoService service;


	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public String writeForm() {
		return "memo/writeForm";
	}
	@RequestMapping(value = "/set", method = RequestMethod.GET)
	public String set() {
		return "memo/set";
	}
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public String write(MemoVO vo) {
		service.writeMemoAction(vo);
		return "rediect:/";
	}
	@RequestMapping(value = "/memoDatails", method = RequestMethod.GET)
	public void memoDatails(@RequestParam("memoNo") int code, Model model) {
		model.addAttribute(service.memoDatails(code));

	}




}
