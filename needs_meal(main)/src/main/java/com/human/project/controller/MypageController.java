package com.human.project.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.project.domain.CommunityVO;
import com.human.project.domain.OrderVO;
import com.human.project.domain.QnAVO;
import com.human.project.domain.ReplayVO;
import com.human.project.domain.UsersVO;
import com.human.project.service.MainService;
import com.human.project.service.MypageService;
import com.human.project.service.UsersService;

@Controller
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	 public MainService mainService;
	
	@Autowired
	public UsersService usersService;
	
	@RequestMapping("02_productQnAList.do")
	public void productQnAList(Model model, QnAVO vo, HttpSession session) {	
		vo.setU_id((String)session.getAttribute("u_id"));
		model.addAttribute("qnaList", mypageService.getMypageQnA(vo)  );		
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
	public String modifyAccount(UsersVO vo,HttpSession session) {
				
		mypageService.modifyAccount(vo);
		
		session.setAttribute("u_id", vo.getU_id());
		session.setAttribute("u_pwd", vo.getU_pwd());
		session.setAttribute("u_name", vo.getU_name());
		session.setAttribute("u_email", vo.getU_email());
		session.setAttribute("u_tell", vo.getU_tell());
		session.setAttribute("u_addr", vo.getU_addr());
		session.setAttribute("u_birth", vo.getU_birth());
		session.setAttribute("u_grade", vo.getU_grade());
		session.setAttribute("u_point", vo.getU_point());
		
		return "02_MyPage";
	}
	
	@RequestMapping("dropAccount.do")
	public String dropAccount(UsersVO vo , HttpSession session) {
		
		mypageService.dropAccount(vo);
		
		session.invalidate();
		
		return "01_main";
		
	}
	
	
	
	@RequestMapping("02_reviewView.do")
	 public void reviewView(CommunityVO commuvo, Model model, ReplayVO replayvo) {
		 // 조회수 증가
		 mainService.increaseView(commuvo);
		 // 페이지 조회
		 CommunityVO commuView = mainService.communityView(commuvo);
		 model.addAttribute("Commu", commuView);
		 // 댓글 리스트
		 List<ReplayVO> replayList = mainService.replayList(replayvo);
		 model.addAttribute("ReplayList", replayList); 
		 

	 }
	
	@RequestMapping("productQnAList.do")
	public String insertQnA(QnAVO vo,HttpSession session) {
		
		vo.setU_id((String) session.getAttribute("u_id")); ;
	
		mypageService.insertQnA(vo);
		
		
		return "redirect:/02_productQnAList.do";
	}
	@RequestMapping("02_QnAView.do")
	public String qnAView(QnAVO vo, Model model ) {
		
		QnAVO result = mypageService.modifyQnAAnswerCheck(vo);
		
		if(result != null) {
			model.addAttribute("result",1);
			
		}
		
		model.addAttribute("qna",mypageService.qnAView(vo));
		
				
		return "02_QnAView";
	}
	
	@RequestMapping("deleteQnA.do")
	public String deleteQnA(QnAVO vo) {
		mypageService.deleteQnA(vo);
		
		
		return "redirect:/02_productQnAList.do";
	}
	
	@RequestMapping("02_modifyQnAForm.do")
	public String modifyQnAForm(QnAVO vo, Model model) {
		
		
		model.addAttribute("qna",mypageService.modifyQnAForm(vo));
		
		return "02_modifyQnAForm";
		
	}
	
	@RequestMapping("modifyQnA.do")
	public String modifyQnA(QnAVO vo, Model model) {
		
		
		
		mypageService.modifyQnA(vo);
		
		
		return "redirect:/02_QnAView.do?q_id="+vo.getQ_id();
	}
	
	
	 
//	 커뮤니티 뷰에서 답글달기
	 @RequestMapping("99_myPagereply.do")
	 public String replayAdd(ReplayVO replayvo) {
		 System.out.println("답글");
		 mainService.replayAdd(replayvo);
		 
		 return "redirect:/02_reviewView.do?c_id="+replayvo.getC_id();
	 }
	 
//	 커뮤니티 답글의 답글달기
	@RequestMapping("98_myPageReply.do")
	public String replayreplay(ReplayVO replayvo) {
		System.out.println("답글의답글");
		replayvo.getR_id();
		mainService.replayreplay(replayvo);
		
		return "redirect:/02_reviewView.do?c_id="+replayvo.getC_id();
	}
	
//	커뮤니티 댓글 변경하기
	@RequestMapping("99_myPageReply-change.do")
	public String changeReplay(ReplayVO replayvo) {
		mainService.replayChange(replayvo);
		return "redirect:/02_reviewView.do?c_id="+replayvo.getC_id();
	}
//	커뮤니티 댓글 삭제하기
	@RequestMapping("99_myPageReply-delete.do")
	public String deleteReplay(ReplayVO replayvo) {
		mainService.replayDelete(replayvo);
		return "redirect:/02_reviewView.do?c_id="+replayvo.getC_id();
	}
	
 	
	 public void communityView2(CommunityVO commuvo, Model model, ReplayVO replayvo) {
		 // 조회수 증가
		 mainService.increaseView(commuvo);
		 // 페이지 조회
		 CommunityVO commuView = mainService.communityView(commuvo);
		 model.addAttribute("Commu", commuView);
		 // 댓글 리스트
		 List<ReplayVO> replayList = mainService.replayList(replayvo);
		 model.addAttribute("ReplayList", replayList); 
	 }
	
//	 커뮤니티 답글의 답글 리스트
	 @RequestMapping("01_myPageReplayreplay.do")
	 public String replayReplayList(CommunityVO commuvo, Model model, ReplayVO replayvo) {

		 commuvo.setC_id(replayvo.getC_id());
		 communityView2(commuvo,model,replayvo);
		 // 댓글의 답글리스트
		 List<ReplayVO> replayreplayList  = mainService.replayreplayList(replayvo);
	     model.addAttribute("ReplayReplayList", replayreplayList);
		 return "02_reviewView";
	 }
	 
//	 커뮤니티 글 추가
	 @RequestMapping("99_reviewAdd.do")
	 public String Insertcommu(CommunityVO commuvo, HttpSession session) {
		 commuvo.setU_id((String) session.getAttribute("u_id"));
		 mainService.insertCommunity(commuvo);
		 
		 return "redirect:/02_productReview.do";
	 }
	 
//	 마이페이지 날짜별 검색기능
	 @RequestMapping("99_productQnAList.do")
	 public String dateSerch(Model model, QnAVO vo,HttpSession session) {
		 
		 vo.setU_id((String) session.getAttribute("u_id"));
		 
		 model.addAttribute("qnaList", mypageService.selectdateQnA(vo)  );	
		 
		 return "02_productQnAList";
	 }

	 @RequestMapping("02_orderList.do")
	 public String orderList(OrderVO vo, HttpSession session, Model model) {
		 
		 vo.setU_id((String)session.getAttribute("u_id"));
		 
		 model.addAttribute("orderList",mypageService.orderList(vo));
		 
		 return "02_orderList";
	 }
	
	@RequestMapping("02_MyPage.do")
	public String myPageView(OrderVO vo, HttpSession session, Model model, UsersVO uservo, QnAVO qnavo) {
		
		uservo.setU_id((String)session.getAttribute("u_id")); 
		uservo.setU_pwd((String) session.getAttribute("u_pwd"));
		
		qnavo.setU_id((String)session.getAttribute("u_id"));
		model.addAttribute("qnaList", mypageService.getMypageQnA(qnavo)  );
			
		  uservo = usersService.getLoginInfo(uservo);
		  
		  model.addAttribute("user",uservo);
		  
		  vo.setU_id((String)session.getAttribute("u_id"));
			 
		  model.addAttribute("orderList",mypageService.orderList(vo));
		
		
		return "02_MyPage";
	}
	
	@RequestMapping("deliveryInfo.do")
	public String deliveryInfo(OrderVO vo,Model model) {
		model.addAttribute("deliveryInfo",mypageService.deliveryInfo(vo));
		
		return "02_deliveryInfo";
	}
 
	@RequestMapping("DateSearch.do")
	public String orderDateSearch(OrderVO vo, HttpSession session , Model model) {
		vo.setU_id((String)session.getAttribute("u_id"));
		System.out.println(vo);
		vo.setStartDate(vo.getStartDate().replace(".", "-"));		
		vo.setEndDate(vo.getEndDate().replace(".", "-"));		
		model.addAttribute("orderList",mypageService.orderDateSearch(vo));
		
		
		return "02_orderList";
	}
}
