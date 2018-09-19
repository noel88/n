package org.pro.dao;

import java.util.List;


import org.pro.domain.ReplyVo;

public interface ReplyDAO {

	
	public int add(ReplyVo vo);
	public void remove(Integer code);
	public List<ReplyVo> view();
	public void updateLike(Integer code);
	public void updateHatd(Integer code);
	
	
}
