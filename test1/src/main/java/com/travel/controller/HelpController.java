package com.travel.controller;

	import java.io.IOException;
import java.lang.reflect.Member;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.travel.dao.HelpDAO;
import com.travel.domain.HelpDTO;
import com.travel.domain.MemberInfo;
import com.travel.mvc.annotation.Controller;
	import com.travel.mvc.annotation.RequestMapping;
	import com.travel.mvc.annotation.RequestMethod;
import com.travel.mvc.annotation.ResponseBody;
import com.travel.mvc.view.ModelAndView;
	import com.travel.util.MyUtil;
	import com.travel.util.MyUtilBootstrap;

	import jakarta.servlet.ServletException;
	import jakarta.servlet.http.HttpServletRequest;
	import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

	@Controller
	public class HelpController {
/*
		// 공지사항 리스트
		@RequestMapping(value = "/help/notice/list", method = RequestMethod.GET)
		public ModelAndView noticeList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			 ModelAndView mav = new ModelAndView("help/notice/list");
			 HelpDAO dao = new HelpDAO();
			 MyUtil util = new MyUtilBootstrap();
			 
		       try {
		            int size = 10; // 한 페이지에 표시할 데이터 수
		            int total_page = 0;
		            int dataCount = 0;

		            String pageNo = req.getParameter("pageNo");
		            int current_page = 1;
		            if (pageNo != null) {
		                current_page = Integer.parseInt(pageNo);
		            }

		            int offset = (current_page - 1) * size;
		            if (offset < 0) offset = 0;

		            // 데이터 가져오기
		            List<HelpDTO> list = dao.listInquiries(offset, size);
		            dataCount = dao.dataCount();

		            if (dataCount != 0) {
		                total_page = util.pageCount(dataCount, size);
		            }
		            if (current_page > total_page) {
		                current_page = total_page;
		            }

		            String paging = util.pagingMethod(current_page, total_page, "loadMyInquiries");

		            // 데이터 전달
		            mav.addObject("list", list);
		            mav.addObject("pageNo", current_page);
		            mav.addObject("dataCount", dataCount);
		            mav.addObject("total_page", total_page);
		            mav.addObject("paging", paging);

		        } catch (Exception e) {
		            resp.sendError(500, "서버 오류 발생");
		            e.printStackTrace();
		        }

			 
			 return mav;
	    }
		
	    
	    @RequestMapping(value = "/help/contact/inquiry", method = RequestMethod.GET)
	    public ModelAndView main(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        ModelAndView mav = new ModelAndView("help/contact/inquiry");

	        HelpDAO dao = new HelpDAO();
	        MyUtil util = new MyUtilBootstrap();

	        try {
	            int size = 10; // 한 페이지에 표시할 데이터 수
	            int total_page = 0;
	            int dataCount = 0;

	            String pageNo = req.getParameter("pageNo");
	            int current_page = 1;
	            if (pageNo != null) {
	                current_page = Integer.parseInt(pageNo);
	            }

	            int offset = (current_page - 1) * size;
	            if (offset < 0) offset = 0;

	            // 데이터 가져오기
	            List<HelpDTO> list = dao.listInquiries(offset, size);
	            dataCount = dao.dataCount();

	            if (dataCount != 0) {
	                total_page = util.pageCount(dataCount, size);
	            }
	            if (current_page > total_page) {
	                current_page = total_page;
	            }

	            String paging = util.pagingMethod(current_page, total_page, "loadMyInquiries");

	            // 데이터 전달
	            mav.addObject("list", list);
	            mav.addObject("pageNo", current_page);
	            mav.addObject("dataCount", dataCount);
	            mav.addObject("total_page", total_page);
	            mav.addObject("paging", paging);

	        } catch (Exception e) {
	            resp.sendError(500, "서버 오류 발생");
	            e.printStackTrace();
	        }

	        return mav;
	    }
*/
	    // 1:1 문의 작성 폼

	    @RequestMapping(value = "/help/contact/inquiry", method = RequestMethod.GET)
	    public ModelAndView writeForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
			ModelAndView mav = new ModelAndView("help/contact/inquiry");
	        mav.addObject("mode", "inquiry");
	        return mav;
	    }

	    // 1:1 문의 등록하기
	    @ResponseBody
	    @RequestMapping(value = "/help/contact/inquiry", method = RequestMethod.POST)
	    public  ModelAndView writeSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	         
	    	HelpDAO dao = new HelpDAO();
	    	
	    	HttpSession session = req.getSession();
			MemberInfo info = (MemberInfo)session.getAttribute("member");
			

	        try {
	            HelpDTO dto = new HelpDTO();
	            dto.setTitle(req.getParameter("subject")); // 제목
	            dto.setContent(req.getParameter("content")); // 내용
	        
	        } catch (Exception e) {
	            e.printStackTrace();
	     
	        }

	        return new ModelAndView("redirect:/help/contact/myInquiry");
	    }

	 // 나의 문의 리스트 
	   @ RequestMapping(value = "/help/contact/myInquiry", method = RequestMethod.GET)
	 		public ModelAndView myInquiryList(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			ModelAndView mav = new ModelAndView("help/contat/myInquiry");
			
			HelpDAO dao = new HelpDAO();
			MyUtil util = new MyUtilBootstrap();
			
			try {
				String page = req.getParameter("page");
				int current_page = 1;
				if(page != null) {
					current_page = Integer.parseInt(page);
				}
				
				// 검색
				String schType = req.getParameter("schType");
				String kwd = req.getParameter("kwd");
				if(schType == null) {
					schType = "all";
					kwd = "";
				}
				
				// GET 방식이면 디코딩
				if(req.getMethod().equalsIgnoreCase("GET")) {
					kwd = URLDecoder.decode(kwd, "utf-8");
				}
				
				// 데이터 개수
				int dataCount;
				if(kwd.length() == 0) {
					dataCount = dao.dataCount(); // 검색이 아닌경우
				} else {
					dataCount = dao.dataCount(schType, kwd); // 검색인 경우
				}
				
				// 전체 페이지 수
				int size = 10;
				int total_page = util.pageCount(dataCount, size);
				if(current_page > total_page) {
					current_page = total_page;
				}
				
				// 게시물 가져오기
				int offset = (current_page - 1) * size;
				if(offset < 0) offset = 0;
				
				List<HelpDTO> list = null;
				if(kwd.length() == 0) {
					list = dao.listBoard(offset, size);
				} else {
					list = dao.listBoard(offset, size, schType, kwd);
				}
				
				// 쿼리
				String query = "";
				if(kwd.length() != 0) {
					query = "schType=" + schType + "&kwd=" +
							URLEncoder.encode(kwd, "utf-8");
				}
				
				// 페이징 처리
				String cp = req.getContextPath();
				String listUrl = cp + "/bbs/list";
						// 글리스트 주소
				String articleUrl = cp + "/bbs/article?page=" + current_page;
							// 글보기 주소
				if(query.length() != 0) {
					listUrl += "?" + query;
					articleUrl += "&" + query;
				}
				
				// 페이징
				String paging = util.paging(current_page, total_page, listUrl);
				
				// 포워딩할 JSP에 전달할 속성
				mav.addObject("list", list);
				mav.addObject("page", current_page);
				mav.addObject("total_page", total_page);
				mav.addObject("dataCount", dataCount);
				mav.addObject("size", size);
				mav.addObject("articleUrl", articleUrl);
				mav.addObject("paging", paging);
				mav.addObject("schType", schType);
				mav.addObject("kwd", kwd);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return mav;
		}
	 	    
	 /*   // 나의 문의 수정 폼
	    @RequestMapping(value = "/help/contact/myinquiry/update", method = RequestMethod.GET)
	    public ModelAndView updateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        ModelAndView mav = new ModelAndView("help/contact/writeInquiry");
	        mav.addObject("mode", "update");

	        MyInquiryDAO dao = new MyInquiryDAO();
	        long inquiryId = Long.parseLong(req.getParameter("id"));
	        
	        try {
	            MyInquiryDTO dto = dao.readMyInquiry(inquiryId);
	            mav.addObject("dto", dto);
	        } catch (Exception e) {
	            resp.sendError(500, "서버 오류 발생");
	            e.printStackTrace();
	        }

	        return mav;
	    }

	    // 나의 문의 수정 처리
	    @ResponseBody
	    @RequestMapping(value = "/help/contact/myinquiry/update", method = RequestMethod.POST)
	    public Map<String, Object> updateSubmit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        Map<String, Object> model = new HashMap<>();
	        MyInquiryDAO dao = new MyInquiryDAO();

	        try {
	            MyInquiryDTO dto = new MyInquiryDTO();
	            dto.setInquiryId(Long.parseLong(req.getParameter("id")));
	            dto.setSubject(req.getParameter("subject"));
	            dto.setContent(req.getParameter("content"));

	            dao.updateMyInquiry(dto);
	            model.put("state", "true");
	        } catch (Exception e) {
	            e.printStackTrace();
	            model.put("state", "false");
	        }

	        return model;
	    }

	    // 나의 문의 삭제 처리
	    @ResponseBody
	    @RequestMapping(value = "/help/contact/myinquiry/delete", method = RequestMethod.POST)
	    public Map<String, Object> deleteInquiry(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        Map<String, Object> model = new HashMap<>();
	        MyInquiryDAO dao = new MyInquiryDAO();

	        try {
	            long inquiryId = Long.parseLong(req.getParameter("id"));
	            dao.deleteMyInquiry(inquiryId);
	            model.put("state", "true");
	        } catch (Exception e) {
	            e.printStackTrace();
	            model.put("state", "false");
	        }

	        return model;
	    }
	}
*/
}
