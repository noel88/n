package org.blog.service;

import java.util.List;

import org.blog.domain.CategoryVO;

public interface CategoryService {

	public void category_insert(CategoryVO vo);
	public List<CategoryVO> category_info(String name);
	
}
