package com.human.project.service;

import java.util.List;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;

public interface MainService {

//	재료 리스트 및 재료 하나만 조회
	// 상세조회
	ItemVO getMainItem(ItemVO itemvo);
	// 전체조회
	List<ItemVO> getMainItemList();
//	밀키트 카테고리별 조회
	List<ItemVO>  selectItemCtgList(ItemVO itemvo);
	
//	밀키트 신메뉴 조회
	List<MealVO>  newMealList();
	
//	밀키트 베스트상품 조회
	List<MealVO>  bestMealList();

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
	
//	커뮤니티 글 추가
	void insertCommunity(CommunityVO commuvo);
	
//	글 추가시 해당 밀키트가 있다면 그 밀키트의 리뷰수 증가
	void updateMeal(CommunityVO commuvo);
	
	
//	커뮤니티 글 조회
	List<CommunityVO> selectCommuList();
	
//	커뮤니티 검색기능
	List<CommunityVO> serchCommuList(CommunityVO commuvo);
	
//	밀키트, 아이템 리뷰에 대한 커뮤니티 리스트 조회
	List<CommunityVO> selectReViewCommu(CommunityVO commuvo);
//	밀키트, 아이템 리뷰에 대한 커뮤니티 리스트 조회
	List<QnAVO> selectViewQnA(QnAVO qnavo);
		
	
//	커뮤니티 카테고리별 조회
	List<CommunityVO> selectCommuCtgList(CommunityVO commuvo);
	
//	커뮤니티 뷰 보기 및 조횟수 증가
	void increaseView(CommunityVO commuvo);
	
	CommunityVO communityView(CommunityVO commuvo);	
	
//	커뮤니티 글 수정
	void updateCommunity(CommunityVO commuvo);
//	커뮤니티 글 삭제
	void deleteCommunity(CommunityVO commuvo);
	
//	리뷰 내가쓴글 조회
	List<CommunityVO> MyReviewList(CommunityVO commuvo);
	
//	커뮤니티 뷰에서 댓글추가
	void replayAdd(ReplayVO replayvo);
	
//	커뮤니티 뷰에서 댓글수정
	void replayChange(ReplayVO replayvo);
	
//	커뮤니티 뷰에서 댓글삭제
	void replayDelete(ReplayVO replayvo);
	
//	커뮤니티 뷰에서 댓글리스트
	List<ReplayVO> replayList(ReplayVO replayvo);
	
	//	커뮤니티 뷰에서 댓글에 답글달기
	void replayreplay(ReplayVO replayvo);
	
	//	커뮤니티 뷰에서 댓글에 답글리스트
	List<ReplayVO> replayreplayList(ReplayVO replayvo);
	
} 
