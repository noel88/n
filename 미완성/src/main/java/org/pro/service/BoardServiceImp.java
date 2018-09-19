package org.pro.service;

import java.util.List;

import javax.inject.Inject;

import org.pro.dao.BoardDAO;
import org.pro.domain.BoardVo;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImp implements BoardService {


	@Inject
	private BoardDAO dao;

	@Override
	public int add(BoardVo vo) {
		int result = dao.add(vo);
		return result;
	}

	@Override
	public BoardVo selectOne(Integer code) {
		dao.updateCount(code);
		return dao.selectOne(code);
	}

	@Override
	public List<BoardVo> view() {
		return dao.view();
	}

	@Override
	public void delete(Integer code) {
		dao.delete(code);

	}

	@Override
	public int update(BoardVo vo) {
		 int result = dao.update(vo);
		return result;
	}






}
