package org.blog.service;

import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.ImgVO;

public interface BlogService {

	public int create(BlogVO vo);
	public int create_img(ImgVO vo);
	public int update(BlogVO vo);
	public void delete(Integer no);
	public void like_cnt(Integer no);
	public int select_like_count(Integer no);
	public List<BlogVO> list();
	public List<BlogVO> my_list(String name);
	public List<BlogVO> my_comment(String name);
	public BlogVO blog_detail(Integer no);


}
