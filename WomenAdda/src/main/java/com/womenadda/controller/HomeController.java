package com.womenadda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/")
	public ModelAndView homePage()
	{
		return new ModelAndView("index");		
	}
	@RequestMapping("/index")
	public ModelAndView indexPage()
	{
		return new ModelAndView("index");		
	}
	
	
	
	
}
