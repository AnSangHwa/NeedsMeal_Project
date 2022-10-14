package com.human.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public void getMypageReplayList(Model model) {
		model.addAttribute("replayList", mypageService.getMypageReplay()  );		
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
	
	
	
	
 
}
