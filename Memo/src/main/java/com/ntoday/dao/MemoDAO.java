package com.ntoday.dao;

import java.util.List;

import com.ntoday.domain.MemoVO;

public interface MemoDAO {

	public int writeMemoAction(MemoVO vo);
	public List<MemoVO> memoList();
	public MemoVO memoDatails(Integer code);
}
