package com.ntoday.service;

import java.util.List;

import com.ntoday.domain.MemoVO;

public interface MemoService {

	public int writeMemoAction(MemoVO vo);
	public List<MemoVO> memoList();
	public MemoVO memoDatails(Integer code);
}
