package com.human.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.AdminDAO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	public AdminDAO adminDAO;
	
//	재료 부분
	@Override
	public void insertAdminItem(ItemVO itemvo) {
		adminDAO.insertAdminItem(itemvo);
		
	}

	@Override
	public void deleteAdminItem(ItemVO itemvo) {
		adminDAO.deleteAdminItem(itemvo);
		
	}

	@Override
	public void updateAdminItem(ItemVO itemvo) {
		adminDAO.updateAdminItem(itemvo);
		
	}
 
	@Override
	public ItemVO getAdminItem(ItemVO itemvo) {
		return adminDAO.getAdminItem(itemvo);
	}

	@Override
	public List<ItemVO> getAdminItemList() {
		return adminDAO.getAdminItemList();
	}

//	밀키트 부분
	@Override
	public void insertAdminMeal(MealVO mealvo) {
		adminDAO.insertAdminMeal(mealvo);
		
	}

	@Override
	public void deleteAdminMeal(MealVO mealvo) {
		adminDAO.deleteAdminMeal(mealvo);
		
	}

	@Override
	public void updateAdminMeal(MealVO mealvo) {
		adminDAO.updateAdminMeal(mealvo);
		
	}

	@Override
	public MealVO getAdminMeal(MealVO mealvo) {
		return adminDAO.getAdminMeal(mealvo);
	}

	@Override
	public List<MealVO> getAdminMealList() {
		return adminDAO.getAdminMealList();
	}

	@Override
	public void eventADD(EventVO eventvo) {
		adminDAO.eventAdd(eventvo);
		
	}

	@Override
	public List<ItemVO> getAdminItemCtgList(ItemVO itemvo) {
		return adminDAO.getAdminItemCtgList(itemvo);
	}

	
	
	
	

}
