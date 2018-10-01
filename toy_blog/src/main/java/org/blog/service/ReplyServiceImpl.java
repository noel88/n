package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.ReplyDAO;
import org.blog.domain.ReplyVO;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Inject ReplyDAO dao;
	
	/**
	 * 코멘트 등록
	 * 
	 * @see org.blog.service.ReplyService#comment(org.blog.domain.ReplyVO)
	 * @param ReplyVO
	 * @return int
	 * @throws 
	 */
	
	@Override
	public int comment(ReplyVO vo) {
		return dao.comment(vo);
	}

	/**
	 * 코멘트 리스트[게시물안에 노출]
	 * 
	 * @see org.blog.service.ReplyService#comment_list(Integer)
	 * @param Integer
	 * @return List
	 * @throws 
	 */
	
	@Override
	public List<ReplyVO> comment_list(Integer no) {
		return dao.comment_list(no);
	}

	/**
	 * 코멘트 카운트
	 * 
	 * @see org.blog.service.ReplyService#comment_count(Integer)
	 * @param Integer
	 * @return int
	 * @throws 
	 */
	
	@Override
	public int comment_count(Integer blog_no) {
		return dao.comment_count(blog_no);
	}

	

	
}
