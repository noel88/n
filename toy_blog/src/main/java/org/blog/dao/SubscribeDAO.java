package org.blog.dao;

import java.util.List;

import org.blog.domain.BlogVO;
import org.blog.domain.SubscribeVO;

public interface SubscribeDAO {

	public void subscribe(SubscribeVO vo);
	public List<BlogVO> subcribe_list(Integer no);
	
	
	
}
