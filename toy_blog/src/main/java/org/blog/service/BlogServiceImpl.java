package org.blog.service;

import javax.inject.Inject;

import org.blog.dao.BlogDAO;
import org.blog.domain.BlogVO;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl implements BlogService{

	@Inject private BlogDAO dao;

	@Override
	public void blog_create(BlogVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
