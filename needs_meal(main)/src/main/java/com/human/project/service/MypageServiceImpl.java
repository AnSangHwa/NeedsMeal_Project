package com.human.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.project.dao.MypageDAO;
import com.human.project.domain.CommunityVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	public MypageDAO mypageDAO;
	
	@Override
	public UsersVO getMypageUsers(UsersVO usersvo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ItemVO getMypageItem(ItemVO itemvo) {
		// TODO Auto-generated method stub
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
		return mypageDAO.getMypageQnA(vo);
	}

	@Override
	public List<ReplayVO> getMypageReview(String userId) {
		// TODO Auto-generated method stub
		return mypageDAO.getMypageReview(userId);
	}

	@Override
	public void modifyAccount(UsersVO vo) {
		mypageDAO.modifyAccount(vo);
		
	}

	@Override
	public void dropAccount(UsersVO vo) {
		mypageDAO.dropAccount(vo);
		
	}

	@Override
	public CommunityVO reView(CommunityVO vo) {
		return mypageDAO.reView(vo);
	}

	@Override
	public void insertQnA(QnAVO vo) {
		mypageDAO.insertQnA(vo);
		
	}

	@Override
	public QnAVO qnAView(QnAVO vo) {
		
		return mypageDAO.qnAView(vo);
	}

	@Override
	public void deleteQnA(QnAVO vo) {
		mypageDAO.deleteQnA(vo);
		
		
	}

	@Override
	public QnAVO modifyQnAForm(QnAVO vo) {
		// TODO Auto-generated method stub
		return mypageDAO.modifyQnAForm(vo);
	}

	@Override
	public void modifyQnA(QnAVO vo) {
		mypageDAO.modifyQnA(vo);
		
	}

	@Override
	public QnAVO modifyQnAAnswerCheck(QnAVO vo) {
		// TODO Auto-generated method stub
		return mypageDAO.modifyQnAAnswerCheck(vo);
	}
	
	@Override
	public List<QnAVO> selectdateQnA(QnAVO vo) {
		return mypageDAO.selectdateQnA(vo);
	}

	@Override
	public List<OrderVO> orderList(OrderVO vo) {
		return mypageDAO.orderList(vo);
	}

	@Override
	public OrderVO deliveryInfo(OrderVO vo) {
		// TODO Auto-generated method stub
		return mypageDAO.deliveryInfo(vo);
	}

	@Override
	public List<OrderVO> orderDateSearch(OrderVO vo) {
		// TODO Auto-generated method stub
		return mypageDAO.orderDateSearch(vo);
	}
	
	
}
