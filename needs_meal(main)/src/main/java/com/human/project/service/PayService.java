package com.human.project.service;

import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.UsersVO;

public interface PayService {

//	결제시 회원  정보 얻기
	UsersVO getPayUsers(UsersVO usersvo);
	
//	결제할 재료 하나씩 조회
	ItemVO getPayItem(ItemVO itemvo);

//	결제할 밀키트 하나씩 조회
	MealVO getPayMeal(MealVO mealvo);

//	OrderListVO 주문에 관한 메소드
	
	
}
 