package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.CommentDAO;
import org.blog.domain.CommentVO;
import org.springframework.stereotype.Service;

@Service
public class CommentServiceImpl implements CommentService{

	@Inject CommentDAO dao;

	/**
	 * 코멘트 등록
	 *
	 * @see org.blog.service.CommentService#comment(org.blog.domain.CommentVO)
	 * @param CommentVO
	 * @return int
	 * @throws
	 */

	@Override
	public int comment(CommentVO vo) {
		return dao.comment(vo);
	}

	/**
	 * 코멘트 리스트[게시물안에 노출]
	 *
	 * @see org.blog.service.CommentService#comment_list(Integer)
	 * @param Integer
	 * @return List
	 * @throws
	 */

	@Override
	public List<CommentVO> comment_list(Integer no) {
		return dao.comment_list(no);
	}

	/**
	 * 코멘트 카운트
	 *
	 * @see org.blog.service.CommentService#comment_count(Integer)
	 * @param Integer
	 * @return int
	 * @throws
	 */

	@Override
	public int comment_count(Integer blog_no) {
		return dao.comment_count(blog_no);
	}

	@Override
	public void comment_update(CommentVO vo) {
		dao.comment_update(vo);

	}

	@Override
	public void comment_delete(Integer comment_no) {
		dao.comment_delete(comment_no);

	}




}
