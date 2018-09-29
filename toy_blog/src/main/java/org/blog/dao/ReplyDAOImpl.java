package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.ReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	
	@Inject private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.replyMapper";
	
	@Override
	public int comment(ReplyVO vo) {
		return sqlsession.insert(namespace + ".comment", vo);
	}

	@Override
	public List<ReplyVO> comment_list(Integer no) {
		return sqlsession.selectList(namespace + ".list", no);
	}

	@Override
	public int comment_count(Integer blog_no) {
		return sqlsession.selectOne(namespace + ".comment_count", blog_no);
	}

}
