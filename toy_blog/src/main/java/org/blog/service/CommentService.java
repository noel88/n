package org.blog.service;

import java.util.List;

import org.blog.domain.CommentVO;

public interface CommentService {

	public int comment(CommentVO vo);
	public int comment_count(Integer blog_no);
	public CommentVO my_comment(CommentVO vo);
	public List<CommentVO> comment_list(Integer no);
	public void comment_update(CommentVO vo);
	public void comment_delete(Integer comment_no);


}
