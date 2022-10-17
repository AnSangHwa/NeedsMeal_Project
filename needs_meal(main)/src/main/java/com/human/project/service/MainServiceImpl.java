package com.human.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.MainDAO;
import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;

@Service
public class MainServiceImpl implements MainService{

	@Autowired
	public MainDAO mainDAO;
	
	@Override
	public ItemVO getMainItem(ItemVO itemvo) {
		return mainDAO.getMainItem(itemvo);
	}

	@Override
	public List<ItemVO> getMainItemList() {
		return mainDAO.getMainItemList();
	}
 
	@Override
	public MealVO getMainMeal(MealVO mealvo) {
		return mainDAO.getMainMeal(mealvo);
	}

	@Override
	public List<MealVO> getMainMealList() {
		return mainDAO.getMainMealList();
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
		mainDAO.insertCommunity(commuvo);
		
	}

	@Override
	public List<CommunityVO> selectCommuList() {
		return mainDAO.selectCommuList();
	}

	@Override
	public List<CommunityVO> selectCommuCtgList(CommunityVO commuvo) {
		return mainDAO.selectCommuCtgList(commuvo);
	}

	@Override
	public List<MealVO>  selectMealCtgList(MealVO mealvo) {
		return mainDAO.selectMealCtgList(mealvo);
	}


	@Override
	public List<MealVO> selectMealgetitemList(ItemVO itemvo) {
		return mainDAO.selectMealgetitemList(itemvo);
	}

	@Override
	public List<ItemVO> selectItemCtgList(ItemVO itemvo) {
		return mainDAO.selectItemCtgList(itemvo);
	}

	

}
