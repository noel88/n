package org.pro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.SqlSession;
import org.pro.domain.UserVo;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImp implements UserDAO{


	@Inject
	private SqlSession sqlSession;
	private static String namespace = "org.pro.mapper.UserMapper";

	private List<UserVo> memberdto = new ArrayList<>();

	@Override
	public int add(UserVo vo) {
		int result = sqlSession.insert(namespace + ".insertUser", vo);
		return result;
	}
	

	@Override
	public void remove(String id) {


	}

	@Override
	public boolean update(String id, UserVo mem) {
		return false;
	}

	@Override
	public List<UserVo> getList() {
		return null;
	}

	@Override
	public List<UserVo> find(String id) {
		return null;
	}

	@Override
	public boolean loginCheck(UserVo vo){
		String check = sqlSession.selectOne(namespace + ".loginCheck", vo);
		boolean isCheck = (check == null) ? false : true; 
		return isCheck;
	}









}
