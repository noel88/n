package org.blog.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.blog.domain.PostVO;
import org.blog.domain.BlogVO;
import org.blog.domain.ImgVO;
import org.blog.domain.LikeVO;
import org.blog.domain.WordVO;
import org.springframework.stereotype.Repository;

@Repository
public class PostDAOImpl implements PostDAO {


	@Inject
	private SqlSession sqlsession;
	private static String namespace = "org.blog.mapper.postMapper";



	@Override
	public int create(PostVO vo) {
		return sqlsession.insert(namespace + ".create", vo);
	}

	@Override
	public List<PostVO> list() {
		return sqlsession.selectList(namespace + ".list");
	}

	@Override
	public void update_cnt(Integer no) {
		sqlsession.update(namespace + ".update_cnt", no);

	}

	@Override
	public PostVO post_detail(Integer no) {
		return sqlsession.selectOne(namespace + ".selectList", no);
	}

	@Override
	public int update(PostVO vo) {
		return sqlsession.update(namespace + ".post_update", vo);
	}

	@Override
	public List<PostVO> my_list(String name) {
		return sqlsession.selectList(namespace + ".my_list", name);
	}

	@Override
	public void delete(Integer no) {
		sqlsession.delete(namespace + ".post_delete", no);

	}

	@Override
	public List<PostVO> my_comment(String name) {
		return sqlsession.selectList(namespace + ".my_comment", name);
	}

	@Override
	public int like_cnt(Integer no) {
		return sqlsession.selectOne(namespace + ".like_count", no);

	}

	@Override
	public int select_like_count(Integer no) {
		return sqlsession.selectOne(namespace + ".select_like_count", no);

	}

	@Override
	public int create_img(ImgVO vo) {
		return sqlsession.insert(namespace + ".img_upload", vo);
	}

	@Override
	public int select_count_list(String name) {
		return sqlsession.selectOne(namespace + ".select_count_list", name);
	}

	@Override
	public int select_count_comment(Integer no) {
		return sqlsession.selectOne(namespace + ".select_count_comment", no);
	}

	@Override
	public List<PostVO> tag_list(String keyword) {
		return sqlsession.selectList(namespace + ".tag_list", keyword);
	}

	@Override
	public void word_create(WordVO vo) {
		sqlsession.insert(namespace + ".word_insert", vo);

	}

	@Override
	public int word_select(WordVO vo) {
		return sqlsession.selectOne(namespace + ".word_select", vo);

	}

	@Override
	public void word_update(WordVO vo) {
		sqlsession.update(namespace + ".word_cnt", vo);

	}

	@Override
	public List<WordVO> word_cnt_list() {
		return sqlsession.selectList(namespace + ".word_cnt_list");
	}

	@Override
	public int like_yn(LikeVO vo) {
		return sqlsession.selectOne(namespace + ".like_yn", vo);
	}

	@Override
	public void like(LikeVO vo) {
		sqlsession.insert(namespace + ".like", vo);
	}

	@Override
	public int all_count_list(String name) {
		return sqlsession.selectOne(namespace + ".all_count_list", name);
	}

	@Override
	public int select_count_like(String name) {
		return sqlsession.selectOne(namespace + ".select_count_like", name);
	}

	@Override
	public BlogVO select_post_blog_no(Integer no) {
		return sqlsession.selectOne(namespace + ".select_post_blog_no", no);
	}

	@Override
	public void post_comment_delete(Integer no) {
		sqlsession.delete(namespace + ".post_comment_delete", no);

	}

	@Override
	public List<PostVO> list_cnt() {
		return sqlsession.selectList(namespace + ".list_cnt");
	}

	@Override
	public List<PostVO> list_pop() {
		return sqlsession.selectList(namespace +".list_pop");
	}

	@Override
	public List<BlogVO> keyword_best(String keyword) {
		return sqlsession.selectList(namespace + ".keyword_best", keyword);
	}

	@Override
	public List<PostVO> keyword_list_blog(String keyword) {
		return sqlsession.selectList(namespace + ".keyword_list_blog", keyword);
	}

	@Override
	public List<BlogVO> list_blog() {
		return sqlsession.selectList(namespace + ".list_blog");
	}




}
