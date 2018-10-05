package org.blog.service;

import java.util.List;

import org.blog.domain.EventVO;

public interface EventService {

	public void event(EventVO vo);
	public List<EventVO> list();
}
