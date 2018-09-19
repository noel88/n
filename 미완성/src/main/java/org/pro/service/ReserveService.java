package org.pro.service;


import org.pro.domain.ReserveVo;

public interface ReserveService {


	public int add(ReserveVo reserve);
	public ReserveVo selectOne(Integer code);
	public void delete();









}
