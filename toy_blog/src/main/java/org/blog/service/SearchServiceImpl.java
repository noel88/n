package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.SearchDAO;
import org.blog.domain.PostVO;
import org.blog.domain.SearchVO;
import org.springframework.stereotype.Service;

@Service
public class SearchServiceImpl implements SearchService{

	@Inject SearchDAO dao;


	@Override
	public List<PostVO> select_title(SearchVO vo) {
		return dao.select_title(vo);
	}

	@Override
	public List<PostVO> select_context(SearchVO vo) {
		return dao.select_context(vo);
	}

	@Override
	public int cnt_title(SearchVO vo) {
		return dao.cnt_title(vo);
	}

	@Override
	public int cnt_context(SearchVO vo) {
		return dao.cnt_context(vo);
	}

	@Override
	public List<PostVO> select_name(SearchVO vo) {
		return dao.select_name(vo);
	}

	@Override
	public int cnt_name(SearchVO vo) {
		return dao.cnt_name(vo);
	}





}
