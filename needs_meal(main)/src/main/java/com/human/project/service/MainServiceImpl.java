package com.human.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.MainDAO;
import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;

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
		return mainDAO.getMainEvent(eventvo);
	}

	@Override
	public List<EventVO> getMainEventList() {
		// TODO Auto-generated method stub
		return mainDAO.getMainEventList();
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

	@Override
	public List<CommunityVO> MyReviewList(CommunityVO commuvo) {
		return mainDAO.MyReviewList(commuvo);
	}

	@Override
	public CommunityVO communityView(CommunityVO commuvo) {
		return mainDAO.communityView(commuvo);
	}

	@Override
	public List<MealVO> newMealList() {
		return mainDAO.newMealList();
	}

	@Override
	public List<MealVO> bestMealList() {
		return mainDAO.bestMealList();
	}

	@Override
	public void replayAdd(ReplayVO replayvo) {
		mainDAO.replayAdd(replayvo);
		
	}

	@Override
	public List<ReplayVO> replayList(ReplayVO replayvo) {
		return mainDAO.replayList(replayvo);
	}

	@Override
	public void increaseView(CommunityVO commuvo) {
		mainDAO.increaseView(commuvo);
		
	}

	@Override
	public void updateCommunity(CommunityVO commuvo) {
		mainDAO.updateCommunity(commuvo);
		
	}

	@Override
	public void deleteCommunity(CommunityVO commuvo) {
		mainDAO.deleteCommunity(commuvo);
		
	}

	@Override
	public void replayreplay(ReplayVO replayvo) {
		mainDAO.replayreplay(replayvo);
		
	}

	@Override
	public List<ReplayVO> replayreplayList(ReplayVO replayvo) {
		return mainDAO.replayreplayList(replayvo);
	}

	@Override
	public void replayChange(ReplayVO replayvo) {
		mainDAO.replayChange(replayvo);
		
	}

	@Override
	public void replayDelete(ReplayVO replayvo) {
		mainDAO.replayDelete(replayvo);
		
	}
	
	@Override
	public List<CommunityVO> selectReViewCommu(CommunityVO commuvo) {
		return mainDAO.selectReViewCommu(commuvo);
	}

	@Override
	public List<QnAVO> selectViewQnA(QnAVO qnavo) {
		return mainDAO.selectViewQnA(qnavo);
	}

	@Override
	public void updateMeal(CommunityVO commuvo) {
		mainDAO.updateMeal(commuvo);
		
	}

	@Override
	public List<CommunityVO> serchCommuList(CommunityVO commuvo) {
		return mainDAO.serchCommuList(commuvo);
	}

	

	

}
