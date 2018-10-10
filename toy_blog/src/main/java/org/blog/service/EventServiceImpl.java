package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.EventDAO;
import org.blog.domain.EventEntryVO;
import org.blog.domain.EventVO;
import org.springframework.stereotype.Service;

@Service
public class EventServiceImpl implements EventService{

	@Inject private EventDAO dao;

	@Override
	public void event(EventVO vo) {
		vo.setEvent_click(0);
		dao.event(vo);

	}

	@Override
	public List<EventVO> list() {
		return dao.list();
	}

	@Override
	public void entry(EventEntryVO vo) {
		dao.entry(vo);

	}

	@Override
	public int entry_count(Integer code) {
		return dao.entry_count(code);
	}



}