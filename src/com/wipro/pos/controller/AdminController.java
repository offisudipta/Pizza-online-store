package com.wipro.pos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@RequestMapping("/Admin")
	public ModelAndView getAdminHome(){
		return new ModelAndView("Admin","type","Admin");
	}
}
