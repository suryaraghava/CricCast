package com.criccast.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DataController {
	
	@RequestMapping("team")
	public ModelAndView showClassData(){
		/*Map<String, Object> model = new HashMap<String, Object>();
		model.put("user", "admin");*/
		return new ModelAndView("Team");
	}

	@RequestMapping("score")
	public ModelAndView showStudentFilter()
	{
		return new ModelAndView("Score");
	}
	@RequestMapping("matches")
	public ModelAndView showStudentInformation(){
		return new ModelAndView("Matches");
	}
	@RequestMapping("ViewMarks")
	public ModelAndView showStudentMarks(){
		return new ModelAndView("StudentMarksInfo");
	}
	@RequestMapping("ViewAttendance")
	public ModelAndView showStudentAttendance(){
		return new ModelAndView("StudentAttendanceInfo");
	}
}
