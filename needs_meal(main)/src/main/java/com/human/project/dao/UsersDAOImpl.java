package com.human.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.UsersVO;

@Repository
public class UsersDAOImpl implements UsersDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public void insertMember(UsersVO vo) {
		
		
		mybatis.insert("Member.insertMember", vo);
		
		
	}

	@Override
	public UsersVO loginCheck(UsersVO vo) {
		
		return mybatis.selectOne("Member.loginCheck",vo);
				
	}

	@Override
	public UsersVO getLoginInfo(UsersVO vo) {
		
		return mybatis.selectOne("Member.loginInfo",vo);
	}

	@Override
	public UsersVO idFind(UsersVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Member.idFind",vo);
	}

	@Override
	public UsersVO idCheck(UsersVO vo) {
		
		return mybatis.selectOne("Member.idCheck",vo);
	}

	@Override
	public UsersVO passCheck(UsersVO vo) {
		// TODO Auto-generated method stub
	
		return mybatis.selectOne("Member.passCheck",vo);
	}

	@Override
	public UsersVO passFind(UsersVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("Member.passFind",vo);
	}

	@Override
	public void passModify(UsersVO vo) {
		
		mybatis.update("Member.passModify",vo);
		
	}
	
	

}
