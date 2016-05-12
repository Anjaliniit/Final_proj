package com.womenadda.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.womenadda.model.Product;
import com.womenadda.model.UserRegister;
import com.womenadda.service.ProductService;
import com.womenadda.service.UserService;

@Controller
public class UserController {
	
	private UserService userService;
	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(UserService us)
	{
		this.userService=us;
		
	}
	
	@RequestMapping("/loginPage")
	public ModelAndView loginPage()
	{System.out.println("in user controller");
		return new ModelAndView("login");		
	}
	
	@RequestMapping("/registerPage")
	public String registerPage(Model model)
	{    UserRegister u=new UserRegister();
		model.addAttribute("user",u);
		return "registerPage";		
	}
	@RequestMapping(value="/register")
	
	String insertUser(@ModelAttribute("user") UserRegister u)
	{
		    userService.addUser(u);
		    return"redirect:/index";
		
	}
}
