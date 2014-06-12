package com.criccast.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
	public ModelAndView getDefaultEvents(){
		Map<String, Object> model = new HashMap<String, Object>();
		System.out.println("test");
		/*List<Events> events = eventService.getEvents();
		model.put("headerpage", "header.html");
		model.put("latest",events.get(0).getEventtitle());
		model.put("events", events);
		*/
		return new ModelAndView("index");
	}

}
