package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.BlogDAO;
import org.blog.domain.BlogVO;
import org.springframework.stereotype.Service;



@Service
public class BlogServiceImpl implements BlogService{


	@Inject
	private BlogDAO dao;

	
	/**
	 * 글 등록
	 * 
	 * @see org.blog.service.BlogService#create(org.blog.domain.BlogVO)
	 * @param BlogVO
	 * @return int
	 * @throws 
	 */
	
	@Override
	public int create(BlogVO vo) {
		int result = dao.create(vo);
		return result;
	}
	
	/**
	 * 글 목록
	 * 
	 * @see org.blog.service.BlogService#list()
	 * @param 
	 * @return List
	 * @throws 
	 */

	@Override
	public List<BlogVO> list() {
		return dao.list();
	}
	
	/**
	 * 글 상세 화면 로직
	 * 
	 * 글 상세보기를 클릭했을때, 조회수 업데이트
	 * 
	 * @see org.blog.service.BlogService#blog_detail(Integer)
	 * @param Integer
	 * @return BlogVO
	 * @throws 
	 */

	@Override
	public BlogVO blog_detail(Integer no) {
		dao.update_cnt(no);
		return dao.blog_detail(no);
	}

	/**
	 * 글 수정
	 * 
	 * @see org.blog.service.BlogService#update(org.blog.domain.BlogVO)
	 * @param BlogVO
	 * @return int
	 * @throws 
	 */
	
	@Override
	public int update(BlogVO vo) {
		return dao.update(vo);
	}
	
	/**
	 * 내가 쓴 글 목록
	 * 
	 * @see org.blog.service.BlogService#my_list(String)
	 * @param BlogVO
	 * @return int
	 * @throws 
	 */

	@Override
	public List<BlogVO> my_list(String name) {
		return dao.my_list(name);
	}

	/**
	 * 글 삭제 
	 * 
	 * @see org.blog.service.BlogService#delete(Integer)
	 * @param Integer
	 * @return void
	 * @throws 
	 */
	
	@Override
	public void delete(Integer no) {
		dao.delete(no);
	}

	/**
	 * 내가 쓴 코멘트 리스트
	 * 
	 * @see org.blog.service.BlogService#my_comment(String)
	 * @param String
	 * @return List
	 * @throws 
	 */
	
	@Override
	public List<BlogVO> my_comment(String name) {
		return dao.my_comment(name);
	}

	@Override
	public void like_cnt(Integer no) {
		dao.like_cnt(no);
		
	}

	@Override
	public int select_like_count(Integer no) {
		return dao.select_like_count(no);
	}

	
}
