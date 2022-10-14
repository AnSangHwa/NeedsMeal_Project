package com.human.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.UsersVO;

@Repository
public class PayDAOImpl implements PayDAO{
 
	@Autowired
	private SqlSessionTemplate mybatis;
	
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
