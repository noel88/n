package org.blog.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.BlogVO;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDAOImpl implements BlogDAO {

	
	@Inject private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.blogMapper";
	
	
	@Override
	public void blog_create(BlogVO vo) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
