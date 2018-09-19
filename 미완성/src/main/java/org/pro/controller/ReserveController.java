package org.pro.controller;

import javax.inject.Inject;

import org.pro.domain.BoardVo;
import org.pro.domain.ReserveVo;
import org.pro.service.BoardService;
import org.pro.service.ReserveService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("*/reserve/")
@Controller
public class ReserveController {


	@Inject
	private ReserveService service;


	@RequestMapping(value = "reserveCheckForm" , method = RequestMethod.GET)
	public String reserveForm(@RequestParam("code") int code, @RequestParam("price") int r_price, ReserveVo vo) throws Exception{
		vo.setCode(code);
		vo.setR_price(r_price);
		return "/reserve/reserveCheckForm";
	}

	@RequestMapping(value = "reserve" , method = RequestMethod.GET)
	public String reserveInsert(ReserveVo vo, Model model) throws Exception{

		service.add(vo);
		model.addAttribute("reserve", vo);
		return "/reserve/check";
	}

	@RequestMapping(value = "check" , method = RequestMethod.GET)
	public void reservecheck(ReserveVo vo, Model model) throws Exception{
		model.addAttribute(service.selectOne(vo.getCode()));

	}







}
