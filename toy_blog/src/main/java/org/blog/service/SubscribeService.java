package org.blog.service;

import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.SubscribeVO;

public interface SubscribeService {

	public void subscribe(SubscribeVO vo);
	public List<BlogVO> subcribe_list(Integer no);
	
}
