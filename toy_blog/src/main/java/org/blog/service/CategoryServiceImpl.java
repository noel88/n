package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.CategoryDAO;
import org.blog.domain.CategoryVO;
import org.blog.domain.PostVO;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements CategoryService {

	@Inject private CategoryDAO dao;

	/**
	 * 블로그 카테고리 추가
	 *
	 * @see org.blog.service.CategoryService#category_insert(org.blog.domain.CategoryVO)
	 * @param CategoryVO
	 * @return void
	 * @throws
	 */

	@Override
	public void category_insert(CategoryVO vo) {
		dao.category_insert(vo);

	}

	/**
	 * 블로그 유저 이름으로 카테고리 정보 확인
	 *
	 * @see org.blog.service.CategoryService#category_info(String)
	 * @param String
	 * @return List<CategoryVO>
	 * @throws
	 */

	@Override
	public List<CategoryVO> category_info(String name){
		return dao.category_info(name);
	}

	@Override
	public List<PostVO> category_post(Integer no){
		return dao.category_post(no);
	}

	@Override
	public CategoryVO select_category_name(Integer no) {
		return dao.select_category_name(no);
	}

	@Override
	public List<Integer> category_no(String name) {
		return dao.category_no(name);
	}

	@Override
	public int category_count(Integer category_no) {
		return dao.category_count(category_no);
	}

}
