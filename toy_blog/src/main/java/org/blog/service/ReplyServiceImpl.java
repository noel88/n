package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.ReplyDAO;
import org.blog.domain.ReplyVO;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Inject ReplyDAO dao;
	
	@Override
	public int comment(ReplyVO vo) {
		return dao.comment(vo);
	}

	@Override
	public List<ReplyVO> comment_list(Integer no) {
		return dao.comment_list(no);
	}

	@Override
	public int comment_count(Integer blog_no) {
		return dao.comment_count(blog_no);
	}

}
