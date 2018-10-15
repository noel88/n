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

	/**
	 * 제목별 검색결과 리스트
	 *
	 * @see org.blog.service.SearchService#select_title(org.blog.domain.SearchVO)
	 * @param SearchVO 
	 * @return List<SearchVO>
	 * @throws
	 */

	@Override
	public List<PostVO> select_title(SearchVO vo) {
		return dao.select_title(vo);
	}

	/**
	 * 글내용 별 검색결과 리스트
	 *
	 * @see org.blog.service.SearchService#select_context(org.blog.domain.SearchVO)
	 * @param SearchVO 
	 * @return List<SearchVO>
	 * @throws
	 */

	@Override
	public List<PostVO> select_context(SearchVO vo) {
		return dao.select_context(vo);
	}
	
	/**
	 * 작성자 별 검색결과 리스트
	 *
	 * @see org.blog.service.SearchService#select_name(org.blog.domain.SearchVO)
	 * @param SearchVO 
	 * @return List<SearchVO>
	 * @throws
	 */

	@Override
	public List<PostVO> select_name(SearchVO vo) {
		return dao.select_name(vo);
	}
	
	/**
	 * 제목별 검색결과 카운트
	 *
	 * @see org.blog.service.SearchService#cnt_title(org.blog.domain.SearchVO)
	 * @param SearchVO 
	 * @return int
	 * @throws
	 */

	@Override
	public int cnt_title(SearchVO vo) {
		return dao.cnt_title(vo);
	}
	
	/**
	 * 내용별 검색결과 카운트
	 *
	 * @see org.blog.service.SearchService#cnt_context(org.blog.domain.SearchVO)
	 * @param SearchVO 
	 * @return int
	 * @throws
	 */

	@Override
	public int cnt_context(SearchVO vo) {
		return dao.cnt_context(vo);
	}

	/**
	 * 작성자별 검색결과 카운트
	 *
	 * @see org.blog.service.SearchService#cnt_name(org.blog.domain.SearchVO)
	 * @param SearchVO 
	 * @return int
	 * @throws
	 */
	
	@Override
	public int cnt_name(SearchVO vo) {
		return dao.cnt_name(vo);
	}





}
