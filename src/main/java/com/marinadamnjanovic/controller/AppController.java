package com.marinadamnjanovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class AppController {

	/*@RequestMapping("/")
	public String goHome(){
		return "index";
	}*/
	
	@RequestMapping("/home")
	public String backHome(){
		return "index";
	}
	
}
