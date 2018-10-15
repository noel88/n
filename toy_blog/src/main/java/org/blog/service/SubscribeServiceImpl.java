package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.SubscribeDAO;
import org.blog.domain.BlogVO;
import org.blog.domain.SubscribeVO;
import org.springframework.stereotype.Service;

@Service
public class SubscribeServiceImpl implements SubscribeService {

	@Inject private SubscribeDAO dao;
	
	@Override
	public void subscribe(SubscribeVO vo) {
		
		dao.subscribe(vo);
		
	}

	@Override
	public List<BlogVO> subcribe_list(Integer no) {
		return dao.subcribe_list(no);
	}

	
	
	
	
}
