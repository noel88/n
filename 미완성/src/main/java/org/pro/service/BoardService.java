package org.pro.service;

import java.util.List;


import org.pro.domain.BoardVo;

public interface BoardService {


	public int add(BoardVo vo);
	public BoardVo selectOne(Integer code);
	public List<BoardVo> view();
	public void delete(Integer code);
	public int update(BoardVo vo);




}
