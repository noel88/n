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

	@Override
	public void blog_create(BlogVO vo) {
		dao.blog_create(vo);
		
	}

	@Override
	public BlogVO blog_info(String name) {
		return dao.blog_info(name);
	}

	@Override
	public int blog_no(String name) {
		return dao.blog_no(name);
	}

	@Override
	public BlogVO profile_info(Integer no) {
		return dao.profile_info(no);
	}


	
	
	
}
