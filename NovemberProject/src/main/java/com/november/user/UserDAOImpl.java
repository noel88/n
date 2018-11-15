package com.november.user;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO{

	@PersistenceContext private EntityManager em; // EntityManagerFactory가 DI 할 수 있도록 어노테이션 설정


	@Override
	public void userJoin(UserVO vo) {
		em.persist(vo);

	}


}