package com.criccast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MatchController {

	@RequestMapping("matches")
	public ModelAndView showStudentInformation(){
		return new ModelAndView("Matches");
	}
}
