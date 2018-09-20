package org.blog.dao;

import java.util.List;

import org.blog.domain.BlogVO;

public interface BlogDAO {


	public int create(BlogVO vo);
	public List<BlogVO> list();

}
