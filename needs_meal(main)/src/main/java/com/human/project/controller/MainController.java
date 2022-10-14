package com.human.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.service.MainService;

@Controller
public class MainController {

	 @Autowired
	 public MainService mainService;
	 
	private ArrayList<ItemVO> itemList = new ArrayList<ItemVO>();
	private ArrayList<ItemVO> baseList = new ArrayList<ItemVO>();

	 
//	 커뮤니티 글 추가
	 @RequestMapping("99_communityadd.do")
	 public String Insertcommu(CommunityVO commuvo) {
		 
		 mainService.insertCommunity(commuvo);
		 
		 return "redirect:/01_communityList.do";
	 }
	
//	 커뮤니티 자유게시판 전체 조회
	 @RequestMapping("01_communityList.do")
	 public void selectCommuList(Model model) {
		 
		 List<CommunityVO> commuList = mainService.selectCommuList();
		 model.addAttribute("CommuList", commuList);
		 
		 
	 }
	 
//	 커뮤니티 커뮤니티별 리스트 조회
	 @RequestMapping("99_communitiyList.do")
	 public String selectCommuCtg(CommunityVO commuvo,Model model) {
		
		 List<CommunityVO> commuList = mainService.selectCommuCtgList(commuvo);
		 model.addAttribute("CommuList", commuList);
		 
		 return "01_communityList";
	 }
	
//	 밀키트 리스트 조회
	 @RequestMapping("01_productList.do")
	 public void selectMealList(Model model) {
		 
		 List<MealVO> mealList = mainService.getMainMealList();
		 model.addAttribute("MealList", mealList);
		 
	 }
	 
//	 밀키트 카테고리별 조회
	 @RequestMapping("99_mealCtgList.do")
	 public String selectMealCtg(MealVO mealvo,Model model) {
		 
		 List<MealVO> mealList = mainService.selectMealCtgList(mealvo);
		 model.addAttribute("MealList", mealList);
		 
		 return "01_productList";
	 }
	 
//	 밀키트 뷰 하나만 조회하기
	 @RequestMapping("01_productView.do")
	 public void selectMealView(MealVO mealvo,Model model) {
		 
		 itemList.clear();
		 baseList.clear();
		 
		 if( mealvo.getI_id_req() != null || mealvo.getI_id_base() != null ) {
			 
		 String req = mealvo.getI_id_req();
		 String base = mealvo.getI_id_base();
		 
		 String[] reqArr = req.split("/");
		 mealvo.setReqArr(reqArr);
		 String[] baseArr = base.split("/");
		 mealvo.setBaseArr(baseArr);
		 
		 ItemVO itemvo = new ItemVO();
		 
		 for( int i = 0; i< reqArr.length; i++ ) {
			 
			itemvo.setI_id(reqArr[i]);
			itemvo = mainService.getMainItem(itemvo);
			itemList.add(itemvo);
			model.addAttribute("req", itemList);
		 }
		 for( int i = 0; i< baseArr.length; i++ ) {	
			 itemvo.setI_id(baseArr[i]);
			 itemvo = mainService.getMainItem(itemvo);
			 baseList.add(itemvo);
			 model.addAttribute("base", baseList);
		 }
		 
		 }
		 mealvo = mainService.getMainMeal(mealvo);
		 model.addAttribute("meal", mealvo);
	 }
	 
	 @RequestMapping("99_go_cart.do")
	 public String goCart() {
		 
		 return "03_cart";
	 }
	 
}
