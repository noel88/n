package org.pro.dao;


import org.pro.domain.ReserveVo;

public interface ReserveDAO {


	public int add(ReserveVo reserve);
	public ReserveVo selectOne(Integer code);








}
