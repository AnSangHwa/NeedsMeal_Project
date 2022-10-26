package com.human.project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;

@Repository
public class MypageDAOImpl implements MypageDAO{
 
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public UsersVO getMypageUsers(UsersVO usersvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItemVO getMypageItem(ItemVO itemvo) {
		return null;
	}

	@Override
	public MealVO getMypageMeal(MealVO mealvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<QnAVO> getMypageQnA(QnAVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("mypage.mypage-qna",vo);
	}

	@Override
	public List<ReplayVO> getMypageReview(String userId) {
		// TODO Auto-generated method stub
		System.out.println(userId);
		return mybatis.selectList("mypage.mypage-review",userId);
	}

	@Override
	public void modifyAccount(UsersVO vo) {
		mybatis.update("mypage.modifyAccount",vo);
		
	}

	@Override
	public void dropAccount(UsersVO vo) {
		
		mybatis.delete("mypage.dropAccount",vo);
		
	}

	@Override
	public CommunityVO reView(CommunityVO vo) {
		mybatis.update("mypage.viewCount",vo);
		return mybatis.selectOne("mypage.reView",vo);
	}

	@Override
	public void insertQnA(QnAVO vo) {
		mybatis.insert("mypage.insertQnA", vo);
	}

	@Override
	public QnAVO qnAView(QnAVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("mypage.qnAView",vo);
	}

	@Override
	public void deleteQnA(QnAVO vo) {
		mybatis.delete("mypage.deleteQnA",vo);
		
	}

	@Override
	public QnAVO modifyQnAForm(QnAVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("mypage.qnAView",vo);
	}

	@Override
	public void modifyQnA(QnAVO vo) {
		System.out.println("dao 진입 : "+vo.getQ_id());
		mybatis.update("mypage.modifyQnA",vo);
		System.out.println("dao 완료");
		
	}

	@Override
	public QnAVO modifyQnAAnswerCheck(QnAVO vo) {
		return mybatis.selectOne("mypage.QnAAnswerCheck",vo);
	}

	@Override
	public List<QnAVO> selectdateQnA(QnAVO vo) {
		return mybatis.selectList("mypage.selectQnaDate", vo);
	}

	@Override
	public List<OrderVO> orderList(OrderVO vo) {
		return mybatis.selectList("mypage.selectOrderList",vo);
	}

	@Override
	public OrderVO deliveryInfo(OrderVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("mypage.deliveryInfo",vo);
	}

	@Override
	public List<OrderVO> orderDateSearch(OrderVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("mypage.orderDateSearch",vo);
	}

	

}
