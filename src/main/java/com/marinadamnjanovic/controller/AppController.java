package com.marinadamnjanovic.controller;

import com.marinadamnjanovic.model.AdModel;
import com.marinadamnjanovic.service.AdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/")
public class AppController {

	@Autowired
	AdService service;

	@RequestMapping("/")
	public String backHome(){
		return "index";
	}

	@RequestMapping("/about")
	public String about(){
		return "about";
	}

	@RequestMapping(value = "/internships", method = RequestMethod.GET)
	public String internships(ModelMap model) {
		List<AdModel> ads = service.findAllAds();
		model.addAttribute("ads", ads);
		return "internships";
	}

	@RequestMapping(value = "/addetails/{id}", method = RequestMethod.GET)
	public String adDetails(@PathVariable int id, ModelMap model) {
		AdModel ad = service.findById(id);
		model.addAttribute("ad", ad);
		//model.addAttribute("edit", true);
		return "addetails";
	}



	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listAds(ModelMap model) {

		List<AdModel> ads = service.findAllAds();
		model.addAttribute("ads", ads);
		return "allads";
	}

}
