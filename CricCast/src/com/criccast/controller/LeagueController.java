package com.criccast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LeagueController {
	
	@RequestMapping("/league")
	public ModelAndView league(){
		return new ModelAndView("Leagues");
	}
	
	@RequestMapping("/createLeagueView")
	public ModelAndView createLeagueView(){
		return new ModelAndView("CreateLeague");
	}

	@RequestMapping("/scheduleLeagueView")
	public ModelAndView scheduleLeagueView(){
		return new ModelAndView("ScheduleLeague");
	}
	
	@RequestMapping("/createLeagueMatchView")
	public ModelAndView createLeagueMatchView(){
		return new ModelAndView("CreateLeagueMatch");
	}
	
	@RequestMapping("/createLeague")
	public ModelAndView createLeague(){
		return new ModelAndView("redirect:/matches.html");
	}
}
