package org.pro.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pro.domain.ReserveVo;
import org.springframework.stereotype.Repository;

@Repository
public class ReserveDAOImp implements ReserveDAO {


	@Inject
	private SqlSession sqlsession;

	private static String namespace = "org.pro.mapper.ReserverMapper";


	@Override
	public int add(ReserveVo reserve) {
		int result = sqlsession.insert(namespace + ".insertReserve", reserve);
		return result;

	}


	@Override
	public ReserveVo selectOne(Integer code) {
		return sqlsession.selectOne(namespace + ".selectOne", code);

	}



}
