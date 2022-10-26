package com.human.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;

@Repository
public class MainDAOImpl implements MainDAO{
 
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
//	아이템 얻어오기
	@Override
	public ItemVO getMainItem(ItemVO itemvo) {
		return mybatis.selectOne("main.getItem",itemvo);
	}

//	아이템 리스트
	@Override
	public List<ItemVO> getMainItemList() {
		return mybatis.selectList("main.selectItem");
	}

//	밀키트 하나만 조회
	@Override
	public MealVO getMainMeal(MealVO mealvo) {
		return mybatis.selectOne("main.getMeal", mealvo);
	}

//	밀키트 리스트
	@Override
	public List<MealVO> getMainMealList() {
		return mybatis.selectList("main.selectMeal");
	}

	@Override
	public EventVO getMainEvent(EventVO eventvo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("main.getEvent",eventvo);
	}

	@Override
	public List<EventVO> getMainEventList() {
		// TODO Auto-generated method stub
		return mybatis.selectList("main.getEventList");
	}


//	커뮤니티 글쓰기
	@Override
	public void insertCommunity(CommunityVO commuvo) {
		mybatis.insert("main.insertCommu", commuvo);
		
	}

//	커뮤니티 리스트
	@Override
	public List<CommunityVO> selectCommuList() {
		return mybatis.selectList("main.selectCommu");
	}

//	커뮤니티 카테고리별 리스트
	@Override
	public List<CommunityVO> selectCommuCtgList(CommunityVO commuvo) {
		if( commuvo.getM_name() == null) {
			return mybatis.selectList("main.selectCommuCtg",commuvo);			
		}else {
			return mybatis.selectList("main.selectReviewList",commuvo);
		}
	}

//	밀키트 카테고리별 리스트
	@Override
	public List<MealVO>  selectMealCtgList(MealVO mealvo) {
		return mybatis.selectList("main.selectMealCtg",mealvo);
	}

//	해당 아이템이 들어있는 밀키트 리스트
	@Override
	public List<MealVO> selectMealgetitemList(ItemVO itemvo) {
		return mybatis.selectList("main.selectMealgetItem",itemvo);
	}

//	아이템 카테고리별 리스트
	@Override
	public List<ItemVO> selectItemCtgList(ItemVO itemvo) {
		return mybatis.selectList("main.selectItem_Ctg",itemvo);
	}

//	내가쓴 전체글보기
	@Override
	public List<CommunityVO> MyReviewList(CommunityVO commuvo) {
		return mybatis.selectList("main.myReview",commuvo);
	}

	@Override
	public void increaseView(CommunityVO commuvo) {
		mybatis.update("main.increaseView", commuvo);
		
	}

	@Override
	public CommunityVO communityView(CommunityVO commuvo) {
		return mybatis.selectOne("main.selectView", commuvo);
	}

	@Override
	public List<MealVO> newMealList() {
		return mybatis.selectList("main.newMealList");
	}

	@Override
	public List<MealVO> bestMealList() {
		return mybatis.selectList("main.bestMealList");
	}

	@Override
	public void replayAdd(ReplayVO replayvo) {
		mybatis.insert("main.insertReplay", replayvo);
		
	}

	@Override
	public List<ReplayVO> replayList(ReplayVO replayvo) {
		return mybatis.selectList("main.selectReplay", replayvo);
	}

	@Override
	public void updateCommunity(CommunityVO commuvo) {
		mybatis.update("main.updateCommu", commuvo);
		
	}

	@Override
	public void deleteCommunity(CommunityVO commuvo) {
		mybatis.delete("main.deleteCommu", commuvo);
		
	}

	@Override
	public void replayreplay(ReplayVO replayvo) {
		mybatis.insert("main.insertReplayReplay", replayvo);
		
	}

	@Override
	public List<ReplayVO> replayreplayList(ReplayVO replayvo) {
		return mybatis.selectList("main.selectReplayReplay", replayvo);
	}

	@Override
	public void replayChange(ReplayVO replayvo) {
		mybatis.update("main.updateReplay", replayvo);
		
	}

	@Override
	public void replayDelete(ReplayVO replayvo) {
		mybatis.delete("main.deletReplay", replayvo);         
	      mybatis.delete("main.deletReplayReplay", replayvo);
		
	}
	
	@Override
	public List<CommunityVO> selectReViewCommu(CommunityVO commuvo) {
		return mybatis.selectList("main.selectReViewCommu", commuvo);
	}

	@Override
	public List<QnAVO> selectViewQnA(QnAVO qnavo) {
		return mybatis.selectList("main.selectViewqna", qnavo);
	}

	@Override
	public void updateMeal(CommunityVO commuvo) {
		mybatis.update("main.updateMeal", commuvo);
		
	}

	@Override
	public List<CommunityVO> serchCommuList(CommunityVO commuvo) {
		return mybatis.selectList("main.selectSerch", commuvo);
	}


	

}
