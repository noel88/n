package org.blog.service;

import java.util.List;

import org.blog.domain.BlogVO;

public interface BlogService {

	public int create(BlogVO vo);
	public int update(BlogVO vo);
	public void delete(Integer no);
	public List<BlogVO> list();
	public List<BlogVO> my_list(String name);
	public BlogVO blog_detail(Integer no);


}
