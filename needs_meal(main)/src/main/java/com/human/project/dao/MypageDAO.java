package com.human.project.dao;

import java.util.List;

import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;

public interface MypageDAO {
//	로그인시 필요한 정보 얻기
	UsersVO getMypageUsers(UsersVO usersvo);
	
//	재료 하나만 조회
	// 상세조회
	ItemVO getMypageItem(ItemVO itemvo);

		
//	밀키트 리스트 및 밀키트 하나만 조회
	// 상세조회
	MealVO getMypageMeal(MealVO mealvo);

			
//	내가쓴 커뮤니티 글 조회
	List<QnAVO> getMypageQnA();

//  내가 쓴 댓글 조회
	List<ReplayVO> getMypageReplay();
	
	public void modifyAccount(UsersVO vo);
	
}
