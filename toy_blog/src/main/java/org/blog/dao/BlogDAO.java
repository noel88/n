package org.blog.dao;

import java.util.List;

import org.blog.domain.BlogVO;

public interface BlogDAO {


	public int create(BlogVO vo);
	public int update(BlogVO vo);
	public void delete(Integer no);
	public List<BlogVO> list();
	public List<BlogVO> my_list(String name);
	public void update_cnt(Integer no);
	public BlogVO blog_detail(Integer no);

}
