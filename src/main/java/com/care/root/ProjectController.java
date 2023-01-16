package com.care.root;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProjectController {

	@RequestMapping("index")
	public String home() {
		
		return "index";		
		
	}
	@RequestMapping("login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping("register")
	public String register() {
		
		return "register";
	}
}
