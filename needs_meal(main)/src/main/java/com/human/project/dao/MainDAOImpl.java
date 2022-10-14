package com.human.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;

@Repository
public class MainDAOImpl implements MainDAO{
 
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public ItemVO getMainItem(ItemVO itemvo) {
		return mybatis.selectOne("main.getItem",itemvo);
	}

	@Override
	public List<ItemVO> getMainItemList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MealVO getMainMeal(MealVO mealvo) {
		return mybatis.selectOne("main.getMeal", mealvo);
	}

	@Override
	public List<MealVO> getMainMealList() {
		return mybatis.selectList("main.selectMeal");
	}

	@Override
	public EventVO getMainEvent(EventVO eventvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EventVO> getMainEventList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertCommunity(CommunityVO commuvo) {
		mybatis.insert("main.insertCommu", commuvo);
		
	}

	@Override
	public List<CommunityVO> selectCommuList() {
		return mybatis.selectList("main.selectCommu");
	}

	@Override
	public List<CommunityVO> selectCommuCtgList(CommunityVO commuvo) {
		return mybatis.selectList("main.selectCommuCtg",commuvo);
	}

	@Override
	public List<MealVO>  selectMealCtgList(MealVO mealvo) {
		return mybatis.selectList("main.selectMealCtg",mealvo);
	}

}
