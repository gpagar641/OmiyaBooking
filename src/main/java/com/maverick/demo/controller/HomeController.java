package com.maverick.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	

	@RequestMapping(value="/showHome", method=RequestMethod.GET)
	public ModelAndView showHome(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("home");
		
		
		
		return model;
		
	}	

	@RequestMapping(value="/showHotelsList", method=RequestMethod.GET)
	public ModelAndView showHotelsList(HttpServletRequest request)   
	{
		ModelAndView model=new ModelAndView("index");
		
		
		
		return model;
		
	}	
	
}
