package com.human.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.MypageDAO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	public MypageDAO mypageDAO;
	
	@Override
	public UsersVO getMypageUsers(UsersVO usersvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItemVO getMypageItem(ItemVO itemvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MealVO getMypageMeal(MealVO mealvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QnAVO> getMypageQnA() {
		// TODO Auto-generated method stub
		return mypageDAO.getMypageQnA();
	}

	@Override
	public List<ReplayVO> getMypageReplay() {
		// TODO Auto-generated method stub
		return mypageDAO.getMypageReplay();
	}

	@Override
	public void modifyAccount(UsersVO vo) {
		mypageDAO.modifyAccount(vo);
		
	}
	
	
}
