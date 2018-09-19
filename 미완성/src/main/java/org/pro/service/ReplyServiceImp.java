package org.pro.service;

import java.util.List;

import javax.inject.Inject;

import org.pro.dao.ReplyDAO;
import org.pro.domain.ReplyVo;
import org.springframework.stereotype.Service;


@Service
public class ReplyServiceImp implements ReplyService{

	
	@Inject
	private ReplyDAO dao;
	

	@Override
	public int add(ReplyVo vo) {
		int result = dao.add(vo);
		return result;
	}

	@Override
	public void remove(Integer code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReplyVo> view() {
		return dao.view();
	}

	@Override
	public void updateLike(Integer code) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHatd(Integer code) {
		// TODO Auto-generated method stub
		
	}

}
