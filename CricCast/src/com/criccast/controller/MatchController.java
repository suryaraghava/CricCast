package com.criccast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MatchController {

	@RequestMapping("matches")
	public ModelAndView showMatches(){
		return new ModelAndView("Matches");
	}
	
	@RequestMapping("createMatchView")
	public ModelAndView createMatchView(){
		return new ModelAndView("CreateMatch");
	}
	
	@RequestMapping("createMatch")
	public ModelAndView createMatch(){
		return new ModelAndView("redirect:/matches.html");
	}
	
	@RequestMapping("showMatchInformation")
	public ModelAndView showMatchInformation(){
		return new ModelAndView("MatchInformation");
	}
}
