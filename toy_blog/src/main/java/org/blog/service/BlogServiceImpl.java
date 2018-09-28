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



	@Override
	public int create(BlogVO vo) {
		int result = dao.create(vo);
		return result;
	}

	@Override
	public List<BlogVO> list() {
		return dao.list();
	}

	@Override
	public BlogVO blog_detail(Integer no) {
		dao.update_cnt(no);
		return dao.blog_detail(no);
	}

	@Override
	public int update(BlogVO vo) {
		return dao.update(vo);
	}

	@Override
	public List<BlogVO> my_list(String name) {
		return dao.my_list(name);
	}

	@Override
	public void delete(Integer no) {
		dao.delete(no);
		
	}

}
