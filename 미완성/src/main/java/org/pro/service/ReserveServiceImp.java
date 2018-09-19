package org.pro.service;

import java.util.List;

import javax.inject.Inject;

import org.pro.dao.ReserveDAO;
import org.pro.domain.ReserveVo;
import org.springframework.stereotype.Service;

@Service
public class ReserveServiceImp implements ReserveService{



	@Inject
	private ReserveDAO dao;

	@Override
	public int add(ReserveVo reserve) {
		int result = dao.add(reserve);
		return result;
	}


	@Override
	public void delete() {
		// TODO Auto-generated method stub

	}


	@Override
	public ReserveVo selectOne(Integer code) {
		return dao.selectOne(code);
	}









}
