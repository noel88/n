package org.blog.service;

import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.ImgVO;
import org.blog.domain.LikeVO;
import org.blog.domain.WordVO;

public interface BlogService {

	public int create(BlogVO vo);
	public void word_create(WordVO vo);
	public int word_select(WordVO vo);
	public void word_update(WordVO vo);
	public int create_img(ImgVO vo);
	public int update(BlogVO vo);
	public void delete(Integer no);
	public int like_cnt(Integer no);
	public int select_like_count(Integer no);
	public List<BlogVO> list();
	public List<BlogVO> tag_list(String keyowrd);
	public List<BlogVO> my_list(String name);
	public List<BlogVO> my_comment(String name);
	public BlogVO blog_detail(Integer no);
	public int select_count_list(String name);
	public int select_count_comment(Integer no);
	public List<WordVO> word_cnt_list();
	public int like_yn(LikeVO vo);
	public void like(LikeVO vo);



}
