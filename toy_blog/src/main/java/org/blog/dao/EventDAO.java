package org.blog.dao;

import java.util.List;

import org.blog.domain.EventEntryVO;
import org.blog.domain.EventVO;

public interface EventDAO {

	public void event(EventVO vo);
	public List<EventVO> list();
	public void entry(EventEntryVO vo);
	public int entry_count(Integer code);



}
