package com.ntoday.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.ntoday.dao.MemoDAO;
import com.ntoday.domain.MemoVO;

@Service
public class MemoServiceImpl implements MemoService{

	@Inject private MemoDAO dao;

	@Override
	public int writeMemoAction(MemoVO vo) {
		return dao.writeMemoAction(vo);
	}

	@Override
	public List<MemoVO> memoList() {
		return dao.memoList();
	}

	@Override
	public MemoVO memoDatails(Integer code) {
		return dao.memoDatails(code);
	}

}
