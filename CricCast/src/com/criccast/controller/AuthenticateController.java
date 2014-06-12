package com.criccast.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticateController {
	
	@RequestMapping("/loginView")
	public ModelAndView loginView(){
		return new ModelAndView("Login");
	}
	
	@RequestMapping("/login")
	public ModelAndView login(){
		return new ModelAndView("index");
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(){
		return new ModelAndView("redirect:/home.html");
	}

}
