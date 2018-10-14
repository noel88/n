package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.CommentVO;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDAOImpl implements CommentDAO {

	
	@Inject private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.commentMapper";
	
	@Override
	public int comment(CommentVO vo) {
		return sqlsession.insert(namespace + ".comment", vo);
	}

	@Override
	public List<CommentVO> comment_list(Integer no) {
		return sqlsession.selectList(namespace + ".list", no);
	}

	@Override
	public int comment_count(Integer blog_no) {
		return sqlsession.selectOne(namespace + ".comment_count", blog_no);
	}
	

}
