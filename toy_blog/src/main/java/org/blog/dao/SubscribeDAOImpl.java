package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.BlogVO;
import org.blog.domain.SubscribeVO;
import org.springframework.stereotype.Repository;

@Repository
public class SubscribeDAOImpl implements SubscribeDAO {

	@Inject private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.subscribeMapper";
	
	
	@Override
	public void subscribe(SubscribeVO vo) {
		sqlsession.insert(namespace + ".subscribe", vo);
	}


	@Override
	public List<BlogVO> subcribe_list(String name) {
		return sqlsession.selectList(namespace + ".subscribe_blog_info", name);
	}

}
