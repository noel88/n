package org.pro.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pro.domain.BoardVo;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImp implements BoardDAO {

	@Inject
	private SqlSession sqlsession;

	private static String namespace = "org.pro.mapper.BoardMapper";



	@Override
	public int add(BoardVo vo) {
		int result = sqlsession.insert(namespace + ".insertBoard", vo);
		return result;
	}

	@Override
	public BoardVo selectOne(Integer code) {
		return sqlsession.selectOne(namespace + ".selectOne", code);

	}

	@Override
	public List<BoardVo> view() {
		return sqlsession.selectList(namespace + ".list");
	}

	@Override
	public void updateCount(Integer code) {
		sqlsession.update(namespace + ".updateCount", code);

	}

	@Override
	public void delete(Integer code) {
		sqlsession.delete(namespace + ".boardDelete", code);
	}

	@Override
	public int update(BoardVo vo) {
		int result = sqlsession.update(namespace + ".boardUpdate", vo);
		return result;
	}

}
