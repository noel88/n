package org.blog.service;

import java.util.List;

import org.blog.domain.PostVO;
import org.blog.domain.SearchVO;

public interface SearchService {


	public List<PostVO> select_title(SearchVO vo);
	public List<PostVO> select_context(SearchVO vo);
	public List<PostVO> select_name(SearchVO vo);
	public int cnt_title(SearchVO vo);
	public int cnt_context(SearchVO vo);
	public int cnt_name(SearchVO vo);


}
