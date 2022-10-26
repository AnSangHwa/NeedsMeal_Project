package com.human.project.service;

import java.util.List;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;

public interface MypageService {

//	로그인시 필요한 정보 얻기
	UsersVO getMypageUsers(UsersVO usersvo);
	
//	재료 하나만 조회
	// 상세조회
	ItemVO getMypageItem(ItemVO itemvo);

		
//	밀키트 리스트 및 밀키트 하나만 조회
	// 상세조회
	MealVO getMypageMeal(MealVO mealvo);

			
//	커뮤니티 내가쓴 글 조회
	List<QnAVO> getMypageQnA(QnAVO vo);
	
//  내가 쓴 댓글 조회
	List<ReplayVO> getMypageReview(String userId);
	
	public void modifyAccount(UsersVO vo);
	public void dropAccount(UsersVO vo);
	public CommunityVO reView(CommunityVO vo);
	public void insertQnA(QnAVO vo);
	public QnAVO qnAView(QnAVO vo);
	public void deleteQnA(QnAVO vo);
	public QnAVO modifyQnAForm(QnAVO vo);
	public void modifyQnA(QnAVO vo);
	public QnAVO modifyQnAAnswerCheck(QnAVO vo);
//	날짜를 이용한 검색기능
	List<QnAVO> selectdateQnA(QnAVO vo);
	
	List<OrderVO> orderList(OrderVO vo);
	
	OrderVO deliveryInfo(OrderVO vo);
	
	List<OrderVO> orderDateSearch(OrderVO vo);
}
