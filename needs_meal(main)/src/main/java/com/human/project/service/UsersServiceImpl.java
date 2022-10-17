package com.human.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.UsersDAO;
import com.human.project.domain.UsersVO;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	public UsersDAO usersDAO;
	
	@Override
	public void insertMember(UsersVO vo) {
		
		usersDAO.insertMember(vo);
			
	}

	@Override
	public UsersVO loginCheck(UsersVO vo) {
		// TODO Auto-generated method stub
		return usersDAO.loginCheck(vo);
	}

	@Override
	public UsersVO getLoginInfo(UsersVO vo) {
		// TODO Auto-generated method stub
		return usersDAO.getLoginInfo(vo);
	}

	@Override
	public UsersVO idFind(UsersVO vo) {
		// TODO Auto-generated method stub
		return usersDAO.idFind(vo);
	}

	@Override
	public UsersVO idCheck(UsersVO vo) {
		
		return usersDAO.idCheck(vo);
	}

	@Override
	public UsersVO passCheck(UsersVO vo) {
		// TODO Auto-generated method stub
		return usersDAO.passCheck(vo);
	}

	@Override
	public UsersVO passFind(UsersVO vo) {
		// TODO Auto-generated method stub
		return usersDAO.passFind(vo);
	}

	@Override
	public void passModify(UsersVO vo) {
		usersDAO.passModify(vo);
		
	}

	

	
 
}
