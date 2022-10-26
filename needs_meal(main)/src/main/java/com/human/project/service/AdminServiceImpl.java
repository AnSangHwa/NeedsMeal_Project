package com.human.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.AdminDAO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;

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
	public void insertEvent(EventVO eventvo) {
		adminDAO.insertEvent(eventvo);
		
	}

	@Override
	public List<ItemVO> getAdminItemCtgList(ItemVO itemvo) {
		return adminDAO.getAdminItemCtgList(itemvo);
	}

	@Override
	public List<QnAVO> getQnAList(QnAVO vo) {
		// TODO Auto-generated method stub
		return adminDAO.getQnAList(vo);
	}

	@Override
	public QnAVO getAdminQnAView(QnAVO vo) {
		// TODO Auto-generated method stub
		return adminDAO.getAdminQnAView(vo);
	}

	@Override
	public void insertQnAAnswer(QnAVO vo) {
		adminDAO.insertQnAAnswer(vo);
	}

	@Override
	public QnAVO getAdminQnAViewCheck(QnAVO vo) {
		// TODO Auto-generated method stub
		return adminDAO.getAdminQnAViewCheck(vo);
	}

	@Override
	public List<EventVO> eventList() {
		// TODO Auto-generated method stub
		return adminDAO.eventList();
	}

	@Override
	public void modifyEvent(EventVO eventvo) {
		
		adminDAO.modifyEvent(eventvo);
	}

	@Override
	public void deleteEvent(EventVO eventvo) {

		adminDAO.deleteEvent(eventvo);
	}

	@Override
	public List<OrderVO> deliveryList() {
		return adminDAO.deliveryList();
	}

	@Override
	public int deliveryUpdate(OrderVO vo) {
		// TODO Auto-generated method stub
		return adminDAO.deliveryUpdate(vo);
	}

	

	
	
	
	

}
