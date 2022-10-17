package com.human.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
 
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 재료 추가 수정 제거	
	@Override
	public void insertAdminItem(ItemVO itemvo) {
		mybatis.insert("admin.insertItem",itemvo);
		
	}

	@Override
	public void deleteAdminItem(ItemVO itemvo) {
		mybatis.delete("admin.deleteItem",itemvo);
		
	}

	@Override
	public void updateAdminItem(ItemVO itemvo) {
		mybatis.update("admin.updateItem", itemvo);
		
	}

	@Override
	public ItemVO getAdminItem(ItemVO itemvo) {
		return mybatis.selectOne("admin.selectItemOne",itemvo);

	}

	@Override
	public List<ItemVO> getAdminItemList() {
		return mybatis.selectList("admin.selectItem");
	}

	//	밀키트 추가 제거 수정
	@Override
	public void insertAdminMeal(MealVO mealvo) {
		mybatis.insert("admin.insertMeal", mealvo);
		
	}

	@Override
	public void deleteAdminMeal(MealVO mealvo) {
		mybatis.delete("admin.deleteMeal", mealvo);
		
	}

	@Override
	public void updateAdminMeal(MealVO mealvo) {
		mybatis.update("admin.updateMeal", mealvo);
	}

	@Override
	public MealVO getAdminMeal(MealVO mealvo) {
		return mybatis.selectOne("admin.selectMealOne",mealvo);
	}

	@Override
	public List<MealVO> getAdminMealList() {
		return mybatis.selectList("admin.selectMeal");
	}

	@Override
	public void eventAdd(EventVO eventvo) {
		mybatis.insert("admin.insertEvent",eventvo);
		
	}

	@Override
	public List<ItemVO> getAdminItemCtgList(ItemVO itemvo) {
		return mybatis.selectList("admin.selectItemCtg",itemvo);
	}

	
	

}
