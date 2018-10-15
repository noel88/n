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
	
	
	
	/**
	 * 블로그 구독 액션
	 *
	 * @see org.blog.service.SubscribeService#subscribe(org.blog.domain.SubscribeVO)
	 * @param SubscribeVO
	 * @return void
	 * @throws
	 */
	
	@Override
	public void subscribe(SubscribeVO vo) {
		dao.subscribe(vo);
	}
	
	/**
	 * 구독하는 블로그 리스트 정보
	 *
	 * @see org.blog.service.SubscribeService#subscribe_list(Integer)
	 * @param Integer
	 * @return List<BlogVO>
	 * @throws
	 */

	@Override
	public List<BlogVO> subcribe_list(Integer no) {
		return dao.subcribe_list(no);
	}

	
	
	
	
}
