package com.human.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.UsersVO;
import com.human.project.service.MypageService;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("02_productQnAList.do")
	public void getMypageCoummutyList(Model model) {		
		model.addAttribute("qnaList", mypageService.getMypageQnA()  );		
	}
	
		
	@RequestMapping("02_productReview.do")
	public void getMypageReviewList(Model model, HttpSession session) {
		String userId = (String) session.getAttribute("u_id");
		model.addAttribute("reviewList", mypageService.getMypageReview(userId)  );		
	}	
	
	@RequestMapping("insertMyPass.do")
	public String insertMyPass(String u_pwd, HttpSession session, Model model) {
		
		if( session.getAttribute("u_pwd").equals(u_pwd) ) {
			
			return "02_modifyAccountForm";
			
		} else {

			model.addAttribute("result", 0);

			return "02_insertMypass";
		}
		
	}
	@RequestMapping("02_modifyAccountForm.do")
	public String modifyAccount(UsersVO vo) {
		
		mypageService.modifyAccount(vo);
		
		return "02_MyPage";
	}
	
	@RequestMapping("dropAccount.do")
	public String dropAccount(UsersVO vo , HttpSession session) {
		
		mypageService.dropAccount(vo);
		
		session.invalidate();
		
		return "01_main";
		
	}
	
	@RequestMapping("01_eventView.do")
	public String reView(CommunityVO vo, Model model) {
		
		
		
		model.addAttribute("reView",mypageService.reView(vo));
		
		
		return "01_eventView";
	}
	@RequestMapping("productQnAList.do")
	public String insertQnA(QnAVO vo,HttpSession session) {
		
		vo.setU_id((String) session.getAttribute("u_id")); ;
	
		mypageService.insertQnA(vo);
		
		
		return "redirect:/02_productQnAList.do";
	}
	@RequestMapping("02_QnAView.do")
	public String qnAView(QnAVO vo, Model model ) {
		model.addAttribute("qna",mypageService.qnAView(vo));
		
				
		return "02_QnAView";
	}
 
}
