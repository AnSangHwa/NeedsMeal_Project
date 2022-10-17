package com.human.project.service;

import java.util.List;

import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;

public interface AdminService {

	// 추가
		void insertAdminItem(ItemVO itemvo);
		// 삭제
		void deleteAdminItem(ItemVO itemvo);
		// 변경
		void updateAdminItem(ItemVO itemvo);
		
		// 상세조회
		ItemVO getAdminItem(ItemVO itemvo);
		// 전체조회
		List<ItemVO> getAdminItemList();
//		카테고리별 조회
		List<ItemVO> getAdminItemCtgList(ItemVO itemvo);
		
		// 추가
		void insertAdminMeal(MealVO mealvo);
		// 삭제
		void deleteAdminMeal(MealVO mealvo);
		// 변경
		void updateAdminMeal(MealVO mealvo);
 		
		// 상세조회
		MealVO getAdminMeal(MealVO mealvo);
		// 전체조회
		List<MealVO> getAdminMealList();
		
//		이벤트 추가
		void eventADD(EventVO eventvo);
}
