package org.blog.dao;

import java.util.List;

import org.blog.domain.PostVO;
import org.blog.domain.ImgVO;
import org.blog.domain.LikeVO;
import org.blog.domain.WordVO;


/**
 * @author n
 *
 */

public interface PostDAO {


	public int create(PostVO vo);
	public int word_select(WordVO vo);
	public void word_create(WordVO vo);
	public void word_update(WordVO vo);
	public int create_img(ImgVO vo);
	public int update(PostVO vo);
	public void delete(Integer no);
	public List<PostVO> list();
	public List<PostVO> tag_list(String keyword);
	public List<PostVO> my_list(String name);
	public List<PostVO> my_comment(String name);
	public void update_cnt(Integer no);
	public int like_cnt(Integer no);
	public int select_like_count(Integer no);
	public PostVO post_detail(Integer no);
	public int select_count_list(String name);
	public int select_count_comment(Integer no);
	public List<WordVO> word_cnt_list();
	public int like_yn(LikeVO vo);
	public void like(LikeVO vo);

}
