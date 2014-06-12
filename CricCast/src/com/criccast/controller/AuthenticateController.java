package com.criccast.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AuthenticateController {
	
	@RequestMapping("/dashboard")
	public ModelAndView displayDashBoard(){
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", "admin");
		return new ModelAndView("dashboard",model);
	}

}
