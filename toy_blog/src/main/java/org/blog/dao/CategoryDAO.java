package org.blog.dao;

import java.util.List;

import org.blog.domain.CategoryVO;

public interface CategoryDAO {

	
	public void category_insert(CategoryVO vo);
	public List<CategoryVO> category_info(String name);
	
}
