package com.criccast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TeamController {
	@RequestMapping("team")
	public ModelAndView team(){
		/*Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", "admin");*/
		return new ModelAndView("Team");
	}
	
	@RequestMapping("createTeamView")
	public ModelAndView createTeamView(){
		/*Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", "admin");*/
		return new ModelAndView("CreateTeam");
	}
}
