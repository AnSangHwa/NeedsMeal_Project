package com.human.project.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
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

	@Override
	public void insertOrder(OrderVO orderVo) {
		mybatis.insert("pay.insertOrder",orderVo);
			
	}

	

	@Override
	public void mealCntUpdate(MealVO mealVo) {
		mybatis.update("pay.mealCntUpdate",mealVo);
		
	}

	@Override
	public void itemCntUpdate(ItemVO itemVo) {
		mybatis.update("pay.itemCntUpdate",itemVo);
	}

	@Override
	public OrderVO orderInfo(OrderVO vo) {
	
		return mybatis.selectOne("pay.orderInfo",vo);
	}

}
