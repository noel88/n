package com.ntoday.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.ntoday.domain.MemoVO;

@Repository
public class MemoDAOImpl implements MemoDAO{

	@Inject private SqlSession sqlsession;
	private static String namespace = "com.ntoday.mapper.memoMapper";

	@Override
	public int writeMemoAction(MemoVO vo) {
		return sqlsession.insert(namespace + ".writeMemoAction", vo);
	}

	@Override
	public List<MemoVO> memoList() {
		return sqlsession.selectList(namespace + ".memoList");
	}

	@Override
	public MemoVO memoDatails(Integer code) {
		return sqlsession.selectOne(namespace + ".memoDatails", code);
	}

}
