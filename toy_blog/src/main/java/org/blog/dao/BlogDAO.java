package org.blog.dao;


import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.CategoryVO;

public interface BlogDAO {

	
	public void blog_create(BlogVO vo);
	public BlogVO blog_info(String name);
	public int blog_no(String name);
	public BlogVO profile_info(Integer no);
	
	
}
