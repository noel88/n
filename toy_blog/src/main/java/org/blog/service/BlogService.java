package org.blog.service;

import java.util.List;

import org.blog.domain.BlogVO;

public interface BlogService {

	public int create(BlogVO vo);
	public List<BlogVO> list();


}
