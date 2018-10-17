package org.blog.dao;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.BlogVO;
import org.blog.domain.CategoryVO;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDAOImpl implements BlogDAO {

	
	@Inject private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.blogMapper";
	
	
	@Override
	public void blog_create(BlogVO vo) {
		sqlsession.insert(namespace + ".create", vo);
		
	}


	@Override
	public BlogVO blog_info(String name) {
		return sqlsession.selectOne(namespace + ".blog_info", name);
	}


	@Override
	public int blog_no(String name) {
		return sqlsession.selectOne(namespace + ".blog_no", name);
	}


	@Override
	public BlogVO profile_info(Integer no) {
		return sqlsession.selectOne(namespace + ".profile_info", no);
	}


	@Override
	public void profile_img(BlogVO vo) {
		sqlsession.update(namespace +".profile_img", vo);
		
	}


	@Override
	public void blog_img(BlogVO vo) {
		sqlsession.update(namespace +".blog_img", vo);
		
	}


	@Override
	public void blog_info(BlogVO vo) {
		sqlsession.update(namespace + ".user_blog_info", vo);
		
	}


	@Override
	public void profile_info(BlogVO vo) {
		sqlsession.update(namespace + ".user_profile_info", vo);
		
	}



	
	
	
}
