package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.CategoryVO;
import org.blog.domain.PostVO;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDAOImpl implements CategoryDAO{

	@Inject private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.categoryMapper";


	@Override
	public void category_insert(CategoryVO vo) {
		sqlsession.insert(namespace + ".category", vo);

	}

	@Override
	public List<CategoryVO> category_info(String name){
		return sqlsession.selectList(namespace + ".category_info", name);
	}

	@Override
	public List<PostVO> category_post(Integer no) {
		return sqlsession.selectList(namespace + ".category_post", no);
	}

	@Override
	public CategoryVO select_category_name(Integer no) {
		return sqlsession.selectOne(namespace + ".select_category_name", no);
	}





}
