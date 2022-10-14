package com.human.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.project.domain.UsersVO;
import com.human.project.service.UsersService;

@Controller
public class UsersController {
 
	@Autowired
	public UsersService usersService;
	
	@RequestMapping("05_insertJoinMemberFrom.do")
	public String insertJoinMember(UsersVO vo, Model model) {
		
		
		usersService.insertMember(vo);
		
		model.addAttribute("vo", vo);
		
				
		return "05_joinMemberComplete";
					
			
	}
	
	@RequestMapping("loginCheck.do")
	public String loginCheck(UsersVO vo, HttpSession session, Model model) {
		
		UsersVO check = usersService.loginCheck(vo); 
				
		
		if(check.getCount() == 0) {
//			System.out.println("아이디가 없거나 비밀번호가 틀렸습니다.");
			model.addAttribute("vo",check);
			
			return "05_login";
			
		}else {
			vo = usersService.getLoginInfo(vo);
			
			if(vo.getU_id().equals("admin")) {
				return "04_adminMain"; 
			}
			
			session.setAttribute("u_id", vo.getU_id());
			session.setAttribute("u_pwd", vo.getU_pwd());
			session.setAttribute("u_name", vo.getU_name());
			session.setAttribute("u_email", vo.getU_email());
			session.setAttribute("u_tell", vo.getU_tell());
			session.setAttribute("u_addr", vo.getU_addr());
			session.setAttribute("u_birth", vo.getU_birth());
			session.setAttribute("u_grade", vo.getU_grade());
			session.setAttribute("u_point", vo.getU_point());
		}
		
		
		return "01_main";

	}
	
	@RequestMapping("idFind.do")
	public String idFind(UsersVO vo, Model model) {

		UsersVO check = usersService.idCheck(vo);
	
		
		if (check.getCount() == 0) {
//			System.out.println("아이디가 없거나 비밀번호가 틀렸습니다.");
			System.out.println("조회값이 없을 때 "+ check.getCount());
			model.addAttribute("vo", check);

			return "05_idFind";

		} else {
			vo = usersService.idFind(vo);
			vo.setCount(1);
			System.out.println("조회값이 있을때 "+ vo.getCount());
			model.addAttribute("vo", vo);
			

			return "05_idFind";
		}
	}
	
	@RequestMapping("passFind.do")
	public String passFind(UsersVO vo, Model model) {
		
		UsersVO check = usersService.passCheck(vo);

		if (check.getCount() == 0) {
//			System.out.println("아이디가 없거나 비밀번호가 틀렸습니다.");
			System.out.println("조회값이 없을 때 " + check.getCount());
			model.addAttribute("vo", check);

			return "05_passFind";

		} else {
			
			vo = usersService.passFind(vo);
			vo.setCount(1);
			System.out.println("조회값이 있을때 " + vo.getCount());
			model.addAttribute("vo", vo);

			return "05_passFind";
		}

	
	}
	
	@RequestMapping("passModify.do")
	public String passModify(UsersVO vo) {
		
		
		usersService.passModify(vo);
		
		
		return "05_passFind";
	}
	
}
