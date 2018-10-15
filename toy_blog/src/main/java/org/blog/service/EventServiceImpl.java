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

	/**
	 * 이벤트 등록
	 *
	 * @see org.blog.service.EventService#event(org.blog.domain.EventVO)
	 * @param EventVO
	 * @return void
	 * @throws
	 */
	
	@Override
	public void event(EventVO vo) {
		vo.setEvent_click(0);
		dao.event(vo);
	}

	/**
	 * 이벤트 리스트
	 *
	 * @see org.blog.service.EventService#list()
	 * @param
	 * @return List<EventVO)
	 * @throws
	 */
	
	@Override
	public List<EventVO> list() {
		return dao.list();
	}

	/**
	 * 이벤트 응모하기 액션
	 *
	 * @see org.blog.service.EventService#entry(org.blog.domain.EventEntryVO)
	 * @param EventEntryVO
	 * @return void
	 * @throws
	 */
	
	@Override
	public void entry(EventEntryVO vo) {
		dao.entry(vo);
	}

	/**
	 * 이벤트별 응모 인원수
	 *
	 * @see org.blog.service.EventService#entry_count(Integer)
	 * @param Integer
	 * @return int
	 * @throws
	 */
	
	@Override
	public int entry_count(Integer code) {
		return dao.entry_count(code);
	}

	/**
	 * 이벤트 상세 정보 
	 *
	 * @see org.blog.service.EventService#event(Integer)
	 * @param Integer
	 * @return EvnetVO
	 * @throws
	 */
	
	@Override
	public EventVO select_event(Integer code) {
		return dao.select_event(code);
	}
	
	/**
	 * 이벤트 참여여부 확인
	 * 
	 * 이벤트하나당 유저 중복없이 한번만 참석 가능하므로 여부 확인
	 *
	 * @see org.blog.service.EventService#entry_yn(org.blog.domain.EventEntryVO)
	 * @param EventEntryVO
	 * @return int
	 * @throws
	 */

	@Override
	public int entry_yn(EventEntryVO vo) {
		return dao.entry_yn(vo);
	}



}
