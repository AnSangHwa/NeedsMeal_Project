package com.human.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.PayDAO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.UsersVO;

@Service
public class PayServiceImpl implements PayService{

	@Autowired
	public PayDAO payDAO;
	
	@Override
	public UsersVO getPayUsers(UsersVO usersvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItemVO getPayItem(ItemVO itemvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MealVO getPayMeal(MealVO mealvo) {
		// TODO Auto-generated method stub
		return null;
	}

} 
