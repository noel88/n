package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.CategoryDAO;
import org.blog.domain.CategoryVO;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Inject private CategoryDAO dao;

	@Override
	public void category_insert(CategoryVO vo) {
		dao.category_insert(vo);
		
	}
	
	
	@Override
	public List<CategoryVO> category_info(String name){
		return dao.category_info(name);
	}

}
