package com.criccast.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ScoreController {

	@RequestMapping("score")
	public ModelAndView score()
	{
		return new ModelAndView("Score");
	}
	
	@RequestMapping("scoringView")
	public ModelAndView scoringView()
	{
		return new ModelAndView("ScorePage");
	}
	
}
