package com.qburst.sms.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	/**
	 * <p>This is the landing page after login this will redirects
	 * to the home page</p>
	 * @return
	 */
	Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String showHome() {
		return "index";
	}
}
