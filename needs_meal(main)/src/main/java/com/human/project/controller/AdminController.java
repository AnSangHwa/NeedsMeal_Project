package com.human.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.project.domain.EventVO;
import com.human.project.domain.ItemVO;
import com.human.project.domain.MealVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;
import com.human.project.service.AdminService;


@Controller
public class AdminController {

	@Autowired
	public AdminService adminService;
	
	@RequestMapping("{step}.do")
	public String viewpage(@PathVariable String step , HttpSession session) {
		System.out.println("화면이동 : "+ step);
		// 사용자가 단순 화면 이동을 하는 경우 해당 메소드를 이용함
		// 요청한 페이지의 경로이름 : {step} 을 변수로 저장 > @PathVariable
		// servlet 설정한 경로인 /WEB-INF/views/ 아래 파일이 있으면 자동으로 리턴
		
		// 세션에 있는 저장된 값 화면 전환마다 확인
//		System.out.println(session.getAttribute("u_id"));
//		System.out.println(session.getAttribute("u_name"));
//		System.out.println(session.getAttribute("u_email"));
//		System.out.println(session.getAttribute("u_tell"));
//		System.out.println(session.getAttribute("u_addr"));
//		System.out.println(session.getAttribute("u_birth"));
//		System.out.println(session.getAttribute("u_grade"));
//		System.out.println(session.getAttribute("u_point"));
		
		
		// 직접맵핑된 페이지를 모두 확인 한 후에 없으면 실행되는 맵핑메소드
		return step;
	}

//	재료 추가하는 페이지에서 재료코드에따른 재료리스트 보여주기
	@RequestMapping("99_itemCtgList.do")
	public String addItem(ItemVO itemvo,Model model) {
		
		List<ItemVO> itemList = adminService.getAdminItemCtgList(itemvo);
		model.addAttribute("ItemList", itemList);
		
		return "04_adminItemAdd";
	}
	
//	재료 추가하기
	@RequestMapping("99_itemInsert.do")
	public String itemInsert(ItemVO itemvo) {
		
		adminService.insertAdminItem(itemvo);
		
		return "04_adminMain";
	}
	
//	재료 목록 가져오기
	@RequestMapping("04_adminItemManage.do")
	public void showitem(Model model) {
		
		List<ItemVO> itemList = adminService.getAdminItemList();
		model.addAttribute("ItemList", itemList);
	}
	
	
//	재료 선택하기
	@RequestMapping("99_adminItemPick.do")
	public String pick(ItemVO itemvo, Model model) {
		
		itemvo = adminService.getAdminItem(itemvo);
		model.addAttribute("item", itemvo);
		List<ItemVO> itemList = adminService.getAdminItemList();
		model.addAttribute("ItemList", itemList);
		
		return "04_adminItemManage2";
	}
	
//	재료 삭제하기
	@RequestMapping("99_adminItemDelete.do")
	public String itemDelete(ItemVO itemvo) {
		
		adminService.deleteAdminItem(itemvo);
		
		return "04_adminMain";
	}
	
//	재료 수정하기
	@RequestMapping("99_adminUpdate.do")
	public String itemUpdate(ItemVO itemvo) {
		
		adminService.updateAdminItem(itemvo);
		
		return "redirect:/04_adminItemManage.do";
	}
//  밀키트 추가하러들어가기
	@RequestMapping("04_adminMealKitAdd.do")
	public void addMeal(Model model) {
		
		List<ItemVO> itemList = adminService.getAdminItemList();
		model.addAttribute("ItemList", itemList);
	}
	
//	밀키트 추가하기
	@RequestMapping("99_MealInsert.do")
	public String mealInsert(MealVO mealvo) {
		
		adminService.insertAdminMeal(mealvo);
		
		return "04_adminMain";
	}
	
//	밀키트 전체 조회
	@RequestMapping("04_adminMealKitManage.do")
	public void showMeal(Model model) {
		
		List<MealVO> mealList = adminService.getAdminMealList();
		model.addAttribute("MealList", mealList);

	}
	
//	밀키트 선택 및 전체조회
	@RequestMapping("99_adminMealKitPick.do")
	public String mealpick(MealVO mealvo, Model model) {
		
		mealvo = adminService.getAdminMeal(mealvo);
		model.addAttribute("meal", mealvo);
		List<MealVO> mealList = adminService.getAdminMealList();
		model.addAttribute("MealList", mealList);
		
		return "04_adminMealKitManage2";
	}
	
//	밀키트 수정하기
	@RequestMapping("99_MealUpdate.do")
	public String MealUpdate(MealVO mealvo) {
		
		adminService.updateAdminMeal(mealvo);
		
		return "redirect:/04_adminMealKitManage.do";
	}
	
//	밀키트 삭제하기
	@RequestMapping("99_adminMealDelete.do")
	public String mealDelete(MealVO mealvo) {
		
		adminService.deleteAdminMeal(mealvo);
		
		return "04_adminMain";
	}
	
	@RequestMapping("insertEvent.do")
	public String insertEvent(EventVO eventvo) {
		
		adminService.insertEvent(eventvo);
		System.out.println("이벤트 시작일 : "+eventvo.getE_start());
		System.out.println("이벤트 종료일 : "+eventvo.getE_end());
		return "redirect:/04_adminEventManage.do";
	}
	
	@RequestMapping("modifyEvent.do")
	public String modifyEvent(EventVO eventvo) {
		
		adminService.modifyEvent(eventvo);
		
		return "redirect:/04_adminEventManage.do";
	}
	@RequestMapping("deleteEvent.do")
	public String deleteEvent(EventVO eventvo) {
		
		adminService.deleteEvent(eventvo);
		return "redirect:/04_adminEventManage.do";
	}
	
	@RequestMapping("04_adminQnAList.do")
	public String getQnAList(QnAVO vo, Model model){
		
		model.addAttribute("qnaList",adminService.getQnAList(vo));
		
		return "04_adminQnAList";
	}
	
	@RequestMapping("04_adminQnAView.do")
	public String getAdminQnAView(QnAVO vo, Model model) {
		if(adminService.getAdminQnAViewCheck(vo) != null) {
			model.addAttribute("qnACheck",1);
		}
		
		model.addAttribute("qnAView",adminService.getAdminQnAView(vo)); 
		
		return null;
		
	}
	
	@RequestMapping("04_adminQnAForm.do")
	public String adminQnAForm(QnAVO vo, Model model) {
		
					
			model.addAttribute("vo",adminService.getAdminQnAView(vo));
			
			return "04_adminQnAForm";
		
		
	}
	
	@RequestMapping("insertQnAAnswer.do")
	public String insertQnAAnswer(QnAVO vo) {
		
			adminService.insertQnAAnswer(vo);
		
		return "redirect:/04_adminQnAList.do";
	}
	
	@RequestMapping("04_adminEventManage.do")
	public void eventList(EventVO vo, Model model) {
		
		model.addAttribute("eventList",adminService.eventList());
				
		
	}
	
	@RequestMapping("04_admindeliveryManage.do")
	public String deliveryList(Model model) {
		model.addAttribute("deliveryList",adminService.deliveryList()); 
		
		return "04_admindeliveryManage";
	}
	
	@RequestMapping("deliveryUpdate.do")
	public String deliveryUpdate(OrderVO vo, Model model) {
		
				
		 model.addAttribute("result",adminService.deliveryUpdate(vo));
		
		
		return "redirect:/04_admindeliveryManage.do";
	}
	
	
}
