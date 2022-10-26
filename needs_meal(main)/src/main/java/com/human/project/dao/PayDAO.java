package com.human.project.dao;

import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.UsersVO;

public interface PayDAO {
 
//	결제시 회원  정보 얻기
	UsersVO getPayUsers(UsersVO usersvo);
	
//	결제할 재료 하나씩 조회
	ItemVO getPayItem(ItemVO itemvo);

//	결제할 밀키트 하나씩 조회
	MealVO getPayMeal(MealVO mealvo);

//	OrderListVO 주문에 관한 메소드
	void insertOrder(OrderVO orderVo);
	void mealCntUpdate(MealVO mealVo);
	void itemCntUpdate(ItemVO itemVo);
	OrderVO orderInfo(OrderVO vo);
}
