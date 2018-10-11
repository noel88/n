package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.BlogVO;
import org.blog.domain.SearchVO;
import org.springframework.stereotype.Repository;

@Repository
public class SearchDAOImpl implements SearchDAO{

	@Inject private SqlSession session;
	private static String namespace ="org.blog.mapper.searchMapper";




	@Override
	public List<BlogVO> select_title(SearchVO vo) {
		return session.selectList(namespace + ".search_title", vo);
	}

	@Override
	public List<BlogVO> select_context(SearchVO vo) {
		return session.selectList(namespace + ".search_context", vo);
	}

	@Override
	public int cnt_title(SearchVO vo) {
		return session.selectOne(namespace + ".title_count", vo);
	}

	@Override
	public int cnt_context(SearchVO vo) {
		return session.selectOne(namespace + ".context_count", vo);
	}

	@Override
	public List<BlogVO> select_name(SearchVO vo) {
		return session.selectList(namespace + ".search_name", vo);
	}

	@Override
	public int cnt_name(SearchVO vo) {
		return session.selectOne(namespace + ".name_count", vo);
	}

}
