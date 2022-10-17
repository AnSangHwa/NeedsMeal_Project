package com.human.project.service;

import java.util.List;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;

public interface MainService {

//	재료 리스트 및 재료 하나만 조회
	// 상세조회
	ItemVO getMainItem(ItemVO itemvo);
	// 전체조회
	List<ItemVO> getMainItemList();
//	밀키트 카테고리별 조회
	List<ItemVO>  selectItemCtgList(ItemVO itemvo);
		
//	밀키트 리스트 및 밀키트 하나만 조회
	// 상세조회
	MealVO getMainMeal(MealVO mealvo);
	// 전체조회
	List<MealVO> getMainMealList();
//	해당 재료를 갖고있는 밀키트  조회
	List<MealVO>  selectMealgetitemList(ItemVO itemvo);
	
//	밀키트 카테고리별 조회
	List<MealVO>  selectMealCtgList(MealVO mealvo);
			
//	이벤트 리스트 및 이벤트 하나만 조회
	EventVO getMainEvent(EventVO eventvo);
	// 전체조회
	List<EventVO> getMainEventList();
	
	void insertCommunity(CommunityVO commuvo);
	
//	커뮤니티 글 조회
	List<CommunityVO> selectCommuList();
	
//	커뮤니티 카테고리별 조회
	List<CommunityVO> selectCommuCtgList(CommunityVO commuvo);
} 
