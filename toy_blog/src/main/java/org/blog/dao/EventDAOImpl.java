package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.EventEntryVO;
import org.blog.domain.EventVO;
import org.springframework.stereotype.Repository;

@Repository
public class EventDAOImpl implements EventDAO{

	@Inject private SqlSession session;
	private static String namespace = "org.blog.mapper.eventMapper";


	@Override
	public void event(EventVO vo) {
		session.insert(namespace + ".event", vo);

	}

	@Override
	public List<EventVO> list() {
		return session.selectList(namespace + ".eventList");
	}

	@Override
	public void entry(EventEntryVO vo) {
		session.insert(namespace + ".entry", vo);

	}

	@Override
	public int entry_count(Integer code) {
		return session.selectOne(namespace + ".numbering_count", code);

	}

	@Override
	public EventVO select_event(Integer code) {
		return session.selectOne(namespace + ".event_select", code);
	}

	@Override
	public int entry_yn(EventEntryVO vo) {
		return session.selectOne(namespace + ".entry_yn", vo);
	}


}
