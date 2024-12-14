package com.travel.controller;

import java.io.IOException;

import com.travel.mvc.annotation.Controller;
import com.travel.mvc.annotation.RequestMapping;
import com.travel.mvc.view.ModelAndView;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class AdminMainController {
	@RequestMapping(value = "/admin")
	public ModelAndView	main(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ModelAndView mav = new ModelAndView("admin/home");
		
		return mav;
	}
}
