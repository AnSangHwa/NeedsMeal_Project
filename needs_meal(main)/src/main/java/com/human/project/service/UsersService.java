package com.human.project.service;

import com.human.project.domain.UsersVO;

public interface UsersService {

	void insertMember(UsersVO vo);
	
	public UsersVO loginCheck(UsersVO vo);
	public UsersVO getLoginInfo(UsersVO vo);
	public UsersVO idCheck(UsersVO vo);
	public UsersVO idFind(UsersVO vo);
	public UsersVO passCheck(UsersVO vo);
	public UsersVO passFind(UsersVO vo);
	public void passModify(UsersVO vo);
}
 