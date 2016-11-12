package com.wipro.pos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {

	@RequestMapping("/customer")
	public ModelAndView getCustomerHome(){
		return new ModelAndView("customer","type","customer");
	}
}
