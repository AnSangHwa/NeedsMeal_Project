package com.human.project.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;
import com.human.project.service.MainService;
import com.human.project.service.PayService;
import com.human.project.service.UsersService;

@Controller
public class MainController {

	 @Autowired
	 public MainService mainService;
	 
	 @Autowired
	 public PayService payService;
	 
	 @Autowired
	 public UsersService usersService;
	 
	 private ArrayList<ItemVO> itemList = new ArrayList<ItemVO>();
	 private ArrayList<ItemVO> baseList = new ArrayList<ItemVO>();
	
//	 카트에 추가되는 밀키트 배열
	 private ArrayList<MealVO> cartMealList = new ArrayList<MealVO>();
	 private ArrayList<ItemVO> cartItemList = new ArrayList<ItemVO>();
	 private int addCart;
	 private int all_price;

	
//   커뮤니티 글 추가
   @RequestMapping("99_communityadd.do")
   public String Insertcommu(CommunityVO commuvo, HttpSession session) {
      commuvo.setU_id((String) session.getAttribute("u_id"));
      mainService.insertCommunity(commuvo);
//      System.out.println(commuvo.getCtg_id());
      if( commuvo.getCtg_id() == 4000) {
//         System.out.println(commuvo.getCtg_id());
//         System.out.println(commuvo.getM_name());
         mainService.updateMeal(commuvo);          
      }
      
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
			 
		 return "01_communityList2";
		 }else {
			 return "01_communityList3";
		 }
	 }
	 //  커뮤니티 뷰 페이지 조회및 조횟수 증가
	 @RequestMapping("01_communityView.do")
	 public void communityView(CommunityVO commuvo, Model model, ReplayVO replayvo) {
		 // 조회수 증가
		 mainService.increaseView(commuvo);
		 // 페이지 조회
		 CommunityVO commuView = mainService.communityView(commuvo);
		 model.addAttribute("Commu", commuView);
		 // 댓글 리스트
		 List<ReplayVO> replayList = mainService.replayList(replayvo);
		 model.addAttribute("ReplayList", replayList); 
		 

	 }
	 
//	 상품후기 글 보러가기
	 @RequestMapping("98_communityList3.do")
	 public String selectReviewCtg(CommunityVO commuvo,Model model) {
		 
		 List<CommunityVO> commuList = mainService.selectCommuCtgList(commuvo);
		 model.addAttribute("CommuList", commuList);
		 
		 return "01_communityList3";
	 }
	 
//	 커뮤니티 답글의 답글 리스트
	 @RequestMapping("01_replayreplay.do")
	 public String replayReplayList(CommunityVO commuvo, Model model, ReplayVO replayvo) {

		 commuvo.setC_id(replayvo.getC_id());
		 communityView(commuvo,model,replayvo);
		 // 댓글의 답글리스트
		 List<ReplayVO> replayreplayList  = mainService.replayreplayList(replayvo);
	     model.addAttribute("ReplayReplayList", replayreplayList);
		 return "01_communityView";
	 }
	 	 
	 
//	 상품후기 내가쓴글
	 @RequestMapping("99_myReviewList.do")
	 public String myReview(CommunityVO commuvo, HttpSession session, Model model) {
		 commuvo.setU_id((String) session.getAttribute("u_id"));
		 
		 List<CommunityVO> commuList = mainService.MyReviewList(commuvo);
		 model.addAttribute("CommuList", commuList);
		 
		 return "01_communityList4";
	 }
//	 커뮤니티 글 수정할 값 불러오기
	 @RequestMapping("01_communityChange.do")
	 public void changeCommu(CommunityVO commuvo,Model model) {
		 CommunityVO commuView = mainService.communityView(commuvo);
		 model.addAttribute("Commu", commuView);
	 }
	 
//	 커뮤니티 글 수정하기
	 @RequestMapping("99_updateCommu.do")
	 public String updateCommu(CommunityVO commuvo) {
		 mainService.updateCommunity(commuvo);
		 
		 return "redirect:/01_communityView.do?c_id="+commuvo.getC_id();
	 }
//	 커뮤니티 글 삭제하기
	 @RequestMapping("99_deleteCommu.do")
	 public String deleteCommu(CommunityVO commuvo) {
		 mainService.deleteCommunity(commuvo);
		 if( commuvo.getM_name() != "없음") {			 
			 mainService.updateMeal(commuvo);
		 }
		 
		 return  "redirect:/01_communityList.do";
	 }
	 
//	 커뮤니티 검색기능
	 @RequestMapping("99_serchCommu.do")
	 public String serchCommu(CommunityVO commuvo,Model model) {
		 
		 List<CommunityVO> commuList = mainService.serchCommuList(commuvo);
		 model.addAttribute("CommuList", commuList);
		 
		 return "01_communityList";
	 }
	 
//	 신메뉴 리스트 보기 등록일로부터 7일까지.
	 @RequestMapping("01_newMealList.do")
	 public void newMealList(Model model) {
		 
		 List<MealVO> mealList = mainService.newMealList();
		 model.addAttribute("MealList", mealList);
	 }
	 
	 //	 베스트상품 리스트 보기 판매량. 5개 이상 기준
	 @RequestMapping("01_bestMealList.do")
	 public void bestMealList(Model model) {
		 
		 List<MealVO> mealList = mainService.bestMealList();
		 model.addAttribute("MealList", mealList);
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
	 public String selectMealView(MealVO mealvo,Model model, CommunityVO commuvo,QnAVO qnavo) {
		 
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
		 commuvo.setM_name(mealvo.getM_name());
		 List<CommunityVO> commuList = mainService.selectReViewCommu(commuvo);
		 model.addAttribute("commuList", commuList);
		 qnavo.setGoods(mealvo.getM_name());
		 List<QnAVO> qnaList =  mainService.selectViewQnA(qnavo);
		 model.addAttribute("qnaList", qnaList);
		 
		 return "01_productView";
	 }
	 
	 

	 
//	 장바구니에서 목록 클릭시 해당 메뉴 뷰 보여주기 밀키트
	 @RequestMapping("99_productView.do")
	 public String MealViewPage(MealVO mealvo,Model model,CommunityVO commuvo,QnAVO qnavo) {
		 
		 mealvo = mainService.getMainMeal(mealvo);

		 return selectMealView(mealvo,model,commuvo,qnavo);
	 }
	 
	 
//	 장바구니에서 목록 클릭시 해당 메뉴 뷰 보여주기 재료
	 @RequestMapping("99_itemView.do")
	 public String ItemViewPage(ItemVO itemvo,Model model, MealVO mealvo,CommunityVO commuvo ,QnAVO qnavo) {
		 System.out.println(itemvo.getI_id());
		 itemvo = mainService.getMainItem(itemvo);
		 
		 return getItem(itemvo,model,mealvo,commuvo,qnavo);
	 }

//	 장바구니 목록 추가
	 @RequestMapping("99_go_cart.do")
	 public String goCartMeal(MealVO mealvo, Model model) {
		 
		 System.out.println(mealvo.getM_sell_cnt());
		 for(int i = 0; i < cartMealList.size(); i++) {
			 
			 System.out.println(cartMealList.get(i).getM_price());
			 System.out.println(mealvo.getM_price());
			 if(cartMealList.get(i).getM_name().equals(mealvo.getM_name()) 
			    && cartMealList.get(i).getM_price() == mealvo.getM_price() ) {
				 
				 cartMealList.get(i).setM_sell_cnt(cartMealList.get(i).getM_sell_cnt()
						 							+mealvo.getM_sell_cnt());
				 System.out.println(cartMealList.get(i).getM_sell_cnt());
				 model.addAttribute("cartMealList", cartMealList);
				 return "redirect:/03_cart.do";
			 }
			 
		 }
		 
		 mealvo.setCart_cnt(addCart);
		 cartMealList.add(mealvo);
		 model.addAttribute("CartMealList", cartMealList);
		 addCart++;
		 all_price+= mealvo.getM_price();
		
		 
		 return "redirect:/03_cart.do";
		 
	 }
//	 장바구니 목록 추가
	 @RequestMapping("98_go_cart.do")
	 public String goCartItem(ItemVO itemvo, Model model) {
		 
		 System.out.println(itemvo.getI_sell_cnt());
		 for(int i = 0; i < cartItemList.size(); i++) {
			 System.out.println(itemvo.getI_name());
			 System.out.println(cartItemList.get(i).getI_name());
			 if(cartItemList.get(i).getI_name().equals(itemvo.getI_name()) ) {
				 
				 cartItemList.get(i).setI_sell_cnt(cartItemList.get(i).getI_sell_cnt()
						 							+itemvo.getI_sell_cnt());
				 model.addAttribute("CartItemList", cartItemList);
//				 System.out.println(cartItemList.get(i).getI_sell_cnt());
				 return "redirect:/03_cart.do";
			 }
			 
		 }
		 
		
			 
			 itemvo.setCart_cnt(addCart);
			 cartItemList.add(itemvo);
			 model.addAttribute("CartItemList", cartItemList);
			 addCart++;
			 all_price+= itemvo.getI_price();
		
		 
				 
		 
		 return "redirect:/03_cart.do";
		 
	 }

//	 장바구니 목록 조회
	 @RequestMapping("03_cart.do")
	 public void cart(Model model) {
		 
		 model.addAttribute("all_price", all_price);
		 model.addAttribute("CartMealList", cartMealList);
		 model.addAttribute("CartItemList", cartItemList);
		 
	 }
	 
//	 장바구니 목록 삭제
	 @RequestMapping("99_cart_delete.do")
	 public String deleteMealCart(MealVO mealvo) {
		 
		 all_price-=mealvo.getM_price();
		 for(int i = 0; i < cartMealList.size(); i++) {
				if( cartMealList.get(i).getCart_cnt() == mealvo.getCart_cnt() ) {
					
					cartMealList.remove(i);
				}
			 }
		 
		 return "redirect:/03_cart.do";
	 }
	 
//	 장바구니 목록 삭제
	 @RequestMapping("98_cart_delete.do")
	 public String deleteItemCart(ItemVO itemvo) {
		 
		 all_price-=itemvo.getI_price();
		 System.out.println("삭제전");
		 System.out.println(cartItemList.size());
		 for(int i = 0; i < cartItemList.size(); i++) {
			if( cartItemList.get(i).getCart_cnt() == itemvo.getCart_cnt() ) {
				
				cartItemList.remove(i);
			}
		 }
		 System.out.println("삭제후");
		 
		 
		 return "redirect:/03_cart.do";
	 }
	 
//	 장바구니 목록 삭제
	 @RequestMapping("97_cart_delete.do")
	 public String deleteMealPay(MealVO mealvo) {
		 
		 all_price-=mealvo.getM_price();
		 for(int i = 0; i < cartMealList.size(); i++) {
				if( cartMealList.get(i).getCart_cnt() == mealvo.getCart_cnt() ) {
					
					cartMealList.remove(i);
				}
			 }
		 
		 return "redirect:/03_paymentForm.do";
	 }
	 
//	 장바구니 목록 삭제
	 @RequestMapping("96_cart_delete.do")
	 public String deleteItemPay(ItemVO itemvo) {
		 
		 all_price-=itemvo.getI_price();
		 for(int i = 0; i < cartItemList.size(); i++) {
				if( cartItemList.get(i).getCart_cnt() == itemvo.getCart_cnt() ) {
					
					cartItemList.remove(i);
				}
			 }
		 
		 return "redirect:/03_paymentForm.do";
	 }
//	 아이템 리스트 조회
	 @RequestMapping("01_itemList.do")
	 public void selectitemList(Model model) {
		 
		 List<ItemVO> itemList = mainService.getMainItemList();
		 model.addAttribute("ItemList", itemList);
		 
	 }
	 
//	 아이템 뷰
	 @RequestMapping("01_itemView.do")
	 public String getItem(ItemVO itemvo, Model model, MealVO mealvo,CommunityVO commuvo, QnAVO qnavo) {
		 
		 itemvo = mainService.getMainItem(itemvo);
		 model.addAttribute("item", itemvo);
		 
		 List<MealVO> mealList = mainService.selectMealgetitemList(itemvo);
		 model.addAttribute("MealList", mealList);
		 
		 commuvo.setM_name(itemvo.getI_name());
		 List<CommunityVO> commuList = mainService.selectReViewCommu(commuvo);
		 model.addAttribute("commuList", commuList);
		 
		 qnavo.setGoods(itemvo.getI_name());
		 List<QnAVO> qnaList =  mainService.selectViewQnA(qnavo);
		 model.addAttribute("qnaList", qnaList);
		 
		 return "01_itemView";
	 }
	 
	 
	 
//	 아이템 카테고리별 조회
	 @RequestMapping("99_item_CtgList.do")
	 public String selectitemCtg(ItemVO itemvo,Model model) {
		 
		 List<ItemVO> itemList = mainService.selectItemCtgList(itemvo);
		 model.addAttribute("ItemList", itemList);
		 
		 return "01_itemList2";
	 }

	 // 구매하러가기 버튼 클릭시 추가시키기 밀키트
	 @RequestMapping("99_paymentForm.do")
	 public String goPayMeal(MealVO mealvo, Model model) {
		 
		 
		 for(int i = 0; i < cartMealList.size(); i++) {
			 
//				 System.out.println(cartMealList.get(i).getM_price());
//				 System.out.println(mealvo.getM_price());
			 if(cartMealList.get(i).getM_name().equals(mealvo.getM_name()) 
			    && cartMealList.get(i).getM_price() == mealvo.getM_price() ) {
				 
				 cartMealList.get(i).setM_sell_cnt(cartMealList.get(i).getM_sell_cnt()
						 							+mealvo.getM_sell_cnt());
				 model.addAttribute("cartMealList", cartMealList);
				 return "redirect:/03_paymentForm.do";
			 }
			 
		 }
		 
		 mealvo.setCart_cnt(addCart);
		 all_price+= mealvo.getM_price();
		 cartMealList.add(mealvo);
		 model.addAttribute("CartMealList", cartMealList);
		 addCart++;
		 model.addAttribute("all_price", all_price);
		 model.addAttribute("CartItemList", cartItemList);
		 return "redirect:/03_paymentForm.do";
		 
	 }

	 
	// 구매하러가기 버튼 클릭시 추가시키기 재료
	 @RequestMapping("98_paymentForm.do")
	 public String goPayItem(ItemVO itemvo, Model model) {
		 
		 for(int i = 0; i < cartItemList.size(); i++) {
//			 System.out.println(itemvo.getI_name());
//			 System.out.println(cartItemList.get(i).getI_name());
			 if(cartItemList.get(i).getI_name().equals(itemvo.getI_name()) ) {
				 
				 cartItemList.get(i).setI_sell_cnt(cartItemList.get(i).getI_sell_cnt()
						 							+itemvo.getI_sell_cnt());
				 model.addAttribute("CartItemList", cartItemList);
				 return "redirect:/03_paymentForm.do";
			 }
			 
		 }
		 
		 
		 itemvo.setCart_cnt(addCart);
		 all_price+= itemvo.getI_price();
		 cartItemList.add(itemvo);
		 model.addAttribute("CartItemList", cartItemList);
		 addCart++;
		 model.addAttribute("all_price", all_price);
		 model.addAttribute("CartMealList", cartMealList);
		
		 return "redirect:/03_paymentForm.do";
		 
	 }
//	 카트 목록이 주문목록으로 추가
	 @RequestMapping("03_paymentForm.do")
	 public void payAddCart(Model model, HttpSession session) {
		 UsersVO vo = new UsersVO();
		 
		 vo.setU_id((String) session.getAttribute("u_id"));
		 vo.setU_pwd((String) session.getAttribute("u_pwd"));
		 
		 model.addAttribute("User",usersService.getLoginInfo(vo));
		 
		 model.addAttribute("all_price", all_price);
		 model.addAttribute("CartMealList", cartMealList);
		 model.addAttribute("CartItemList", cartItemList);
		 
	 }
	 
//	 커뮤니티 뷰에서 답글달기
	 @RequestMapping("99_reply.do")
	 public String replayAdd(ReplayVO replayvo) {
		 System.out.println("답글");
		 mainService.replayAdd(replayvo);
		 
		 return "redirect:/01_communityView.do?c_id="+replayvo.getC_id();
	 }
	 
//	 커뮤니티 답글의 답글달기
	@RequestMapping("98_reply.do")
	public String replayreplay(ReplayVO replayvo) {
		System.out.println("답글의답글");
		replayvo.getR_id();
		mainService.replayreplay(replayvo);
		
		return "redirect:/01_communityView.do?c_id="+replayvo.getC_id();
	}
	
//	커뮤니티 댓글 변경하기
	@RequestMapping("99_replay-change.do")
	public String changeReplay(ReplayVO replayvo) {
		mainService.replayChange(replayvo);
		return "redirect:/01_communityView.do?c_id="+replayvo.getC_id();
	}
//	커뮤니티 댓글 삭제하기
	@RequestMapping("99_replay-delete.do")
	public String deleteReplay(ReplayVO replayvo) {
		mainService.replayDelete(replayvo);
		return "redirect:/01_communityView.do?c_id="+replayvo.getC_id();
	}
	
	 
	 @RequestMapping("01_eventList.do")
	 public String getEventList(Model model) {
		 
		 List<EventVO> eventList = mainService.getMainEventList();
		 model.addAttribute("EventList",eventList);
		 LocalDate now = LocalDate.now();
		 model.addAttribute("nowDate",now);
	
		 		 	 
		 return "01_eventList";
	 }
	 
	 @RequestMapping("01_eventView.do")
	 public String getEventView(EventVO eventvo, Model model) {
		 
		model.addAttribute("Event", mainService.getMainEvent(eventvo));
	
		 
		 
		 return "01_eventView";
	 }
	 
	 @RequestMapping("03_paymentComplete.do")
	  public String paymentComplete(OrderVO orderVo, ItemVO itemVo, MealVO mealVo, Model model) {
		  
		  
		  if(orderVo.getO_pickList().charAt(0) == '&') {
			  String[] pickListArr = orderVo.getO_pickList().split("&");
			  String[] itemListArr = pickListArr[1].split("/");
			  
			  for(int i = 0; i < itemListArr.length; i++) {
				  
				  if(i%2 == 0) {
					  itemVo.setI_name(itemListArr[i]);
				  }else{
					  itemVo.setI_sell_cnt(Integer.parseInt(itemListArr[i]));
					  payService.itemCntUpdate(itemVo);
				  }
				  
			  }
			  
		  }else if(orderVo.getO_pickList().charAt(orderVo.getO_pickList().length()-1) == '&') {
			  String[] pickListArr = orderVo.getO_pickList().split("&");
			  String[] mealListArr = pickListArr[0].split("/");
			  
			  for(int i = 0; i < mealListArr.length; i++) {
					  
				  if(i%2 == 0) {
					  mealVo.setM_name(mealListArr[i]);
				  }else{
					  mealVo.setM_sell_cnt(Integer.parseInt(mealListArr[i]));
					  payService.mealCntUpdate(mealVo);
				  }
			  
		  }
		  }else {
			  String[] pickListArr = orderVo.getO_pickList().split("&");
			  String[] mealListArr = pickListArr[0].split("/");
			  String[] itemListArr = pickListArr[1].split("/");
			  
			  for(int i = 0; i < mealListArr.length; i++) {
					  
				  if(i%2 == 0) {
					  mealVo.setM_name(mealListArr[i]);
				  }else{
					  mealVo.setM_sell_cnt(Integer.parseInt(mealListArr[i]));
					  payService.mealCntUpdate(mealVo);
				  }
			  
			  }
			  
			  for(int i = 0; i < itemListArr.length; i++) {
				  
				  if(i%2 == 0) {
					  itemVo.setI_name(itemListArr[i]);
				  }else{
					  itemVo.setI_sell_cnt(Integer.parseInt(itemListArr[i]));
					  payService.itemCntUpdate(itemVo);
				  }
				  
			  }
		  }		 	 
		 
		  payService.insertOrder(orderVo);
		  
		  System.out.println(orderVo);
		 model.addAttribute("orderInfo",payService.orderInfo(orderVo));
		  
		  cartMealList.clear();
		  cartItemList.clear();
	  	 
		  
		  return "03_paymentComplete";
	  }
	 
}
