package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.BlogDAO;
import org.blog.domain.BlogVO;
import org.blog.domain.CategoryVO;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl implements BlogService{

	@Inject private BlogDAO dao;


	/**
	 * 블로그 추가 액션[회원가입과 동시에 자동 추가]
	 *
	 * @see org.blog.service.BlogService#blog_create(org.blog.domain.BlogVO)
	 * @param BlogVO
	 * @return void
	 * @throws
	 */

	@Override
	public void blog_create(BlogVO vo) {
		dao.blog_create(vo);
	}

	/**
	 * 회원이름으로 블로그 정보 확인
	 *
	 * @see org.blog.service.BlogService#blog_info(String)
	 * @param String
	 * @return BlogVO
	 * @throws
	 */

	@Override
	public BlogVO blog_info(String name) {
		return dao.blog_info(name);
	}

	/**
	 * 회원이름으로 블로그 코드 확인
	 *
	 * @see org.blog.service.BlogService#blog_no(String)
	 * @param String
	 * @return int
	 * @throws
	 */

	@Override
	public int blog_no(String name) {
		return dao.blog_no(name);
	}

	/**
	 * 게시물 번호로 작성자 프로필 정보 확인
	 *
	 * @see org.blog.service.BlogService#profile_info(Integer)
	 * @param Integer
	 * @return BlogVO
	 * @throws
	 */

	@Override
	public BlogVO profile_info(Integer no) {
		return dao.profile_info(no);
	}

	@Override
	public void profile_img(BlogVO vo) {
		dao.profile_img(vo);

	}

	@Override
	public void blog_img(BlogVO vo) {
		dao.blog_img(vo);

	}

	@Override
	public void blog_info(BlogVO vo) {
		dao.blog_info(vo);

	}

	@Override
	public void profile_info(BlogVO vo) {
		dao.profile_info(vo);

	}

	@Override
	public List<BlogVO> blog() {
		return dao.blog();
	}





}
