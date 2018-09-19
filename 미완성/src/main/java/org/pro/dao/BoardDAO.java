package org.pro.dao;

import java.util.List;

import org.pro.domain.BoardVo;


public interface BoardDAO {


	public int add(BoardVo first);
	public BoardVo selectOne(Integer code);
	public List<BoardVo> view();
	public void updateCount(Integer code);
	public void delete(Integer code);
	public int update(BoardVo vo);




}
