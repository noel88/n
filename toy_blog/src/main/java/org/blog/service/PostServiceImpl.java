package org.blog.service;

import java.util.List;

import javax.inject.Inject;

import org.blog.dao.PostDAO;
import org.blog.domain.PostVO;
import org.blog.domain.ImgVO;
import org.blog.domain.LikeVO;
import org.blog.domain.WordVO;
import org.springframework.stereotype.Service;



@Service
public class PostServiceImpl implements PostService{


	@Inject
	private PostDAO dao;


	/**
	 * 글 등록
	 *
	 * @see org.blog.service.PostService#create(org.blog.domain.PostVO)
	 * @param PostVO
	 * @return int
	 * @throws
	 */

	@Override
	public int create(PostVO vo) {
		int result = dao.create(vo);
		return result;
	}

	/**
	 * 글 목록
	 *
	 * @see org.blog.service.PostService#list()
	 * @param
	 * @return List
	 * @throws
	 */

	@Override
	public List<PostVO> list() {
		return dao.list();
	}

	/**
	 * 글 상세 화면 로직
	 *
	 * 글 상세보기를 클릭했을때, 조회수 업데이트
	 *
	 * @see org.blog.service.PostService#post_detail(Integer)
	 * @param Integer
	 * @return PostVO
	 * @throws
	 */

	@Override
	public PostVO post_detail(Integer no) {
		dao.update_cnt(no);
		return dao.post_detail(no);
	}

	/**
	 * 글 수정
	 *
	 * @see org.blog.service.PostService#update(org.blog.domain.PostVO)
	 * @param PostVO
	 * @return int
	 * @throws
	 */

	@Override
	public int update(PostVO vo) {
		return dao.update(vo);
	}

	/**
	 * 내가 쓴 글 목록
	 *
	 * @see org.blog.service.PostService#my_list(String)
	 * @param PostVO
	 * @return int
	 * @throws
	 */

	@Override
	public List<PostVO> my_list(String name) {
		return dao.my_list(name);
	}

	/**
	 * 글 삭제
	 *
	 * @see org.blog.service.PostService#delete(Integer)
	 * @param Integer
	 * @return void
	 * @throws
	 */

	@Override
	public void delete(Integer no) {
		dao.delete(no);
	}

	/**
	 * 내가 쓴 코멘트 리스트
	 *
	 * @see org.blog.service.PostService#my_comment(String)
	 * @param String
	 * @return List
	 * @throws
	 */

	@Override
	public List<PostVO> my_comment(String name) {
		return dao.my_comment(name);
	}

	@Override
	public int like_cnt(Integer no) {
		return dao.like_cnt(no);

	}

	@Override
	public int select_like_count(Integer no) {
		return dao.select_like_count(no);
	}

	@Override
	public int create_img(ImgVO vo) {
		return dao.create_img(vo);
	}

	@Override
	public int select_count_list(String name) {
		return dao.select_count_list(name);
	}

	@Override
	public int select_count_comment(Integer no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PostVO> tag_list(String keyword) {
		return dao.tag_list(keyword);
	}

	@Override
	public void word_create(WordVO vo) {

		dao.word_create(vo);

	}

	@Override
	public int word_select(WordVO vo) {
		return dao.word_select(vo);

	}

	@Override
	public void word_update(WordVO vo) {
		dao.word_update(vo);

	}

	@Override
	public List<WordVO> word_cnt_list() {
		return dao.word_cnt_list();
	}

	@Override
	public int like_yn(LikeVO vo) {
		return dao.like_yn(vo);
	}

	@Override
	public void like(LikeVO vo) {
		dao.like(vo);
		
	}


}
