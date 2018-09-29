package org.blog.service;

import java.util.List;

import org.blog.domain.ReplyVO;

public interface ReplyService {

	public int comment(ReplyVO vo);
	public int comment_count(Integer blog_no);
	public List<ReplyVO> comment_list(Integer no);
	
}
