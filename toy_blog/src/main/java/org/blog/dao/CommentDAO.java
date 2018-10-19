package org.blog.dao;

import java.util.List;

import org.blog.domain.CommentVO;

public interface CommentDAO {

	public int comment(CommentVO vo);
	public int comment_count(Integer blog_no);
	public List<CommentVO> comment_list(Integer no);
	public void comment_update(CommentVO vo);
	public void comment_delete(Integer comment_no);
	public CommentVO my_comment(CommentVO vo);

}
