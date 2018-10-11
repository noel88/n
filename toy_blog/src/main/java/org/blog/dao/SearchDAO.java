package org.blog.dao;

import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.SearchVO;

public interface SearchDAO {



	public List<BlogVO> select_title(SearchVO vo);
	public List<BlogVO> select_context(SearchVO vo);
	public List<BlogVO> select_name(SearchVO vo);
	public int cnt_title(SearchVO vo);
	public int cnt_context(SearchVO vo);
	public int cnt_name(SearchVO vo);


}
