package com.marinadamnjanovic.controller;

import com.marinadamnjanovic.model.AdModel;
import com.marinadamnjanovic.service.AdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/")
public class AppController {

	@Autowired
	AdService service;

	@Autowired
	MessageSource messageSource;

	@RequestMapping("/")
	public String backHome(){
		return "index";
	}

	@RequestMapping("/company")
	public String company(){
		return "company";
	}

	@RequestMapping("/success")
	public String success(){
		return "success";
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
		model.addAttribute("edit", true);
		return "addetails";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listAds(ModelMap model) {

		List<AdModel> ads = service.findAllAds();
		model.addAttribute("ads", ads);
		return "allads";
	}

	@RequestMapping(value = { "/new" }, method = RequestMethod.GET)
	public String newAd(ModelMap model) {
		AdModel ad = new AdModel();
		model.addAttribute("ad", ad);
		model.addAttribute("edit", false);
		return "registration";
	}

	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public String saveAd(@Valid @ModelAttribute("ad") AdModel ad, BindingResult result,
						 ModelMap model) {

		if (result.hasErrors()) {
			return "registration";
		}

		service.saveAd(ad);

		model.addAttribute("success", "Ad " + ad.getTitle() + " registered successfully");
		return "success";
	}

	@RequestMapping(value = { "/edit/{id}/ad" }, method = RequestMethod.GET)
	public String editAd(@PathVariable int id, ModelMap model) {
		AdModel ad = service.findById(id);
		model.addAttribute("ad", ad);
		model.addAttribute("edit", true);
		return "registration";
	}

	@RequestMapping(value = { "/edit/{id}/ad" }, method = RequestMethod.POST)
	public String updateAd(@Valid AdModel ad, BindingResult result,
								 ModelMap model, @PathVariable int id) {

		if (result.hasErrors()) {
			return "registration";
		}

		service.updateAd(ad);

		model.addAttribute("success", "Ad " + ad.getTitle()  + " updated successfully");
		return "success";
	}

	@RequestMapping(value = { "/delete/{id}/ad" }, method = RequestMethod.GET)
	public String deleteEmployee(@PathVariable int id) {
		service.deleteAdById(id);
		return "redirect:/list";
	}

	@RequestMapping(value="/search", method=RequestMethod.GET)
	public String search(HttpServletRequest request, ModelMap model){
		String param = request.getParameter("search_bar");
		List<AdModel> ads = service.search(param);
		model.addAttribute("ads", ads);
		return "allads";
	}

	@RequestMapping(value="/searchHp", method=RequestMethod.GET)
	public String searchHp(HttpServletRequest request, ModelMap model){
		String param = request.getParameter("search_bar");
		List<AdModel> ads = service.search(param);
		model.addAttribute("ads", ads);
		return "internships";
	}

}
