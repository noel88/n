package org.pro.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.pro.domain.BoardVo;
import org.pro.domain.ReplyVo;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImp implements ReplyDAO{

	
	@Inject
	private SqlSession sqlsession;
	private static String namespace = "org.pro.mapper.ReplyMapper";
	
	
	@Override
	public int add(ReplyVo vo) {
		int result = sqlsession.insert(namespace + ".insertReply", vo);
		return result;
	}

	@Override
	public void remove(Integer code) {
		sqlsession.delete(namespace + ".replyDelete", code);
		
	}

	@Override
	public void updateLike(Integer code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHatd(Integer code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReplyVo> view() {
		return sqlsession.selectList(namespace + ".list");
		
	}

}
