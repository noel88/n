package org.blog.dao;

import java.util.List;

import org.blog.domain.BlogVO;

public interface BlogDAO {


	public int create(BlogVO vo);
	public List<BlogVO> list();
	public void update_cnt(Integer no);
	public BlogVO blog_detail(Integer no);

}
