package com.travel.controller;

import java.io.IOException;


import com.travel.dao.MemberDAO;
import com.travel.domain.MemberDTO;
import com.travel.mvc.annotation.Controller;
import com.travel.mvc.annotation.RequestMapping;
import com.travel.mvc.annotation.RequestMethod;
import com.travel.mvc.view.ModelAndView;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MemberController {
	@RequestMapping(value= "/member/login", method = RequestMethod.GET)
	public ModelAndView loginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 폼
		ModelAndView mav = new ModelAndView("폴더명/파일명");
		
		return mav;
	}
	@RequestMapping(value= "/member/login", method = RequestMethod.POST)
	public ModelAndView loginsubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 처리 
		
		MemberDAO dao = new MemberDAO();
		
		// 클라이언트가 보낸 아이디/패스워드
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		
		MemberDTO dto = dao.loginMember(memberId, memberPwd);
		
		if(dto != null) {
			
			
		}
		
		// 아이디 또는 패스워드가 일치하지 않은 경우
		// 다시 로그인 폼으로 포워딩
		ModelAndView mav = new ModelAndView("폴더명/파일명");
		mav.addObject("message", "아이디 또는 패스워드가 일치하지 않습니다.");
		return mav;
	
	
	}
	
}
