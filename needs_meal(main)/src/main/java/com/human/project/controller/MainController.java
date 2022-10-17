package com.human.project.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

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
	private ArrayList<Object> cartList = new ArrayList<Object>();
	private int addCart;
	private int deleteCart;


	
//	 커뮤니티 글 추가
	 @RequestMapping("99_communityadd.do")
	 public String Insertcommu(CommunityVO commuvo, HttpSession session) {
		 commuvo.setU_id((String) session.getAttribute("u_id"));
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
		 
		 if( commuvo.getCtg_id() < 4000 ) {
			 
		 return "01_communityList";
		 }else {
			 return "01_communityList2";
		 }
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
		 
		 return "01_productList2";
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
		 
		 itemvo.setReq_cnt(0);
		 itemvo.setBase_cnt(0);
		 
		 for( int i = 0; i< reqArr.length; i++ ) {
			 
			itemvo.setI_id(reqArr[i]);
			itemvo.setReq_cnt(i);
			itemvo = mainService.getMainItem(itemvo);
			itemList.add(itemvo);
			model.addAttribute("req", itemList);
		 }
		 for( int i = 0; i< baseArr.length; i++ ) {	
			 itemvo.setI_id(baseArr[i]);
			 itemvo.setBase_cnt(i);
			 itemvo = mainService.getMainItem(itemvo);
			 baseList.add(itemvo);
			 model.addAttribute("base", baseList);
		 }
		 
		 }
		 mealvo = mainService.getMainMeal(mealvo);
		 model.addAttribute("meal", mealvo);
	 }
	 
//	 장바구니 목록 추가
	 @RequestMapping("99_go_cart.do")
	 public String goCart(MealVO mealvo, Model model) {
		 
		 mealvo.setCart_cnt(addCart);
		 cartList.add(mealvo);
		 model.addAttribute("CartList", cartList);
		 addCart++;
		
		 return "03_cart";
		 
	 }
	 
//	 장바구니 목록 조회
	 @RequestMapping("03_cart.do")
	 public void cart(Model model) {
		 
		 model.addAttribute("CartList", cartList);
	 }
	 
//	 장바구니 목록 삭제
	 @RequestMapping("99_cart_delete.do")
	 public String deleteCart(MealVO mealvo) {
		 
//		 System.out.println(mealvo);
//		 System.out.println(cartList.get(mealvo.getCart_cnt()));
		 cartList.remove(mealvo);
//		 System.out.println(cartList.size());
		 
		 return "redirect:/03_cart.do";
	 }
	 
//	 아이템 리스트 조회
	 @RequestMapping("01_itemList.do")
	 public void selectitemList(Model model) {
		 
		 List<ItemVO> itemList = mainService.getMainItemList();
		 model.addAttribute("ItemList", itemList);
		 
	 }
	 
//	 아이템 뷰
	 @RequestMapping("01_itemView.do")
	 public void getItem(ItemVO itemvo, Model model, MealVO mealvo) {
		 
		 itemvo = mainService.getMainItem(itemvo);
		 model.addAttribute("item", itemvo);
		 
		 List<MealVO> mealList = mainService.selectMealgetitemList(itemvo);
		 model.addAttribute("MealList", mealList);
		 
	 }
	 
//	 아이템 카테고리별 조회
	 @RequestMapping("99_item_CtgList.do")
	 public String selectitemCtg(ItemVO itemvo,Model model) {
		 
		 List<ItemVO> itemList = mainService.selectItemCtgList(itemvo);
		 model.addAttribute("ItemList", itemList);
		 
		 return "01_itemList2";
	 }
	 
}
