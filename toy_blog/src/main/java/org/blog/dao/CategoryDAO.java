package org.blog.dao;

import java.util.List;

import org.blog.domain.CategoryVO;
import org.blog.domain.PostVO;

public interface CategoryDAO {


	public void category_insert(CategoryVO vo);
	public List<CategoryVO> category_info(String name);
	public List<PostVO> category_post(Integer no);
	public CategoryVO select_category_name(Integer no);
}
