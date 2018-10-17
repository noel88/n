package org.blog.service;

import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.CategoryVO;

public interface BlogService {


	public void blog_create(BlogVO vo);
	public BlogVO blog_info(String name);
	public int blog_no(String name);
	public BlogVO profile_info(Integer no);
	public void profile_img(BlogVO vo);
	public void blog_img(BlogVO vo);
	public void blog_info(BlogVO vo);
	public void profile_info(BlogVO vo);
	public List<BlogVO> blog();

}

