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

	@Override
	public int update(BlogVO vo) {
		return sqlsession.update(namespace + ".blog_update", vo);
	}

	@Override
	public List<BlogVO> my_list(String name) {
		return sqlsession.selectList(namespace + ".my_list", name);
	}

	@Override
	public void delete(Integer no) {
		sqlsession.delete(namespace + ".blog_delete");
		
	}

	@Override
	public List<BlogVO> my_comment(String name) {
		return sqlsession.selectList(namespace + ".my_comment", name);
	}




}
