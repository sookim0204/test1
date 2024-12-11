package com.travel.controller;

import java.io.IOException;


import com.travel.dao.MemberDAO;
import com.travel.domain.MemberDTO;
import com.travel.domain.MemberInfo;
import com.travel.mvc.annotation.Controller;
import com.travel.mvc.annotation.RequestMapping;
import com.travel.mvc.annotation.RequestMethod;
import com.travel.mvc.view.ModelAndView;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	@RequestMapping(value= "/member/login", method = RequestMethod.GET)
	public ModelAndView loginForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 폼
		ModelAndView mav = new ModelAndView("member/login");
		
		return mav;
	}
	@RequestMapping(value= "/member/login", method = RequestMethod.POST)
	public ModelAndView loginsubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 로그인 처리 
		
		// 세션 객체
		HttpSession session = req.getSession();
		
		MemberDAO dao = new MemberDAO();
		
		
		// 클라이언트가 보낸 아이디/패스워드
		String memberId = req.getParameter("memberId");
		String memberPwd = req.getParameter("memberPwd");
		
		MemberDTO dto = dao.loginMember(memberId, memberPwd);
		
		if(dto != null) {
			// 로그인 성공한 경우
			// 세션에 아이디, 이름, 권한 등을 저장
			
			// 세션 유지시간을 20분으로 설정 : 톰켓 기본은 30분
			session.setMaxInactiveInterval(20 * 60);
			
			// 세션에 저장할 정보
			MemberInfo info = new MemberInfo() {};
			info.setMemberNum(dto.getMemberNum());
			info.setNickname(dto.getName());
			info.setUserLevel(dto.getUserLevel());
			
			// 세션에 member 라는 이름으로 로그인 정보를 저장
			session.setAttribute("member", info);
			
			// 로그인 전 주소가 존재하는 경우
			String preLoginURI = (String)session.getAttribute("preLoginURI");
			session.removeAttribute("preLoginURI");
			if(preLoginURI != null) {
				return new ModelAndView(preLoginURI);
			}
			
			// 메인 화면으로 리다이렉트 
			return new ModelAndView("redirect:/");
		}
		
		// 아이디 또는 패스워드가 일치하지 않은 경우
		// 다시 로그인 폼으로 포워딩
		
		ModelAndView mav = new ModelAndView("member/login");
		mav.addObject("message", "아이디 또는 패스워드가 일치하지 않습니다.");
		return mav;
	}
	
}
