package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.BlogVO;
import org.springframework.stereotype.Repository;

@Repository
public class BlogDAOImpl implements BlogDAO {


	@Inject
	private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.blogMapper";



	@Override
	public int create(BlogVO vo) {

		return sqlsession.insert(namespace + ".create", vo);
	}

	@Override
	public List<BlogVO> list() {

		return sqlsession.selectList(namespace + ".list");
	}

	@Override
	public void update_cnt(Integer no) {
		sqlsession.update(namespace + ".update_cnt", no);
		
	}

	@Override
	public BlogVO blog_detail(Integer no) {
		
		return sqlsession.selectOne(namespace + ".selectList", no);
	}




}
