package com.questas.web;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "home";
	}

	@RequestMapping(value = "/secure/dashboard", method = RequestMethod.GET)
	public String dash(Locale locale, Model model) {
		return "secure/dash";
	}
	
	@RequestMapping(value = "/secure/keyaccountmanagement", method = RequestMethod.GET)
	public String kam(Locale locale, Model model) {
		return "secure/kam";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			
			model.addObject("error", "login.invalid");
		}

		model.setViewName("login");
		model.addObject("viewName", "login");
		model.addObject("navTitle", "button.home");
		model.addObject("navUrl", "/");

		return model;

	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(Locale locale, Model model) {
		return "admin/admin";
	}
	
	@RequestMapping("/signin")
    public String signIn(HttpServletRequest request) {
        if (request.isUserInRole("ROLE_ADMIN")) return "redirect:/admin";
        if (request.isUserInRole("ROLE_USER")) return "redirect:/secure/dashboard";
        return "redirect:/";
    }
	
	@RequestMapping("/home")
	public String home(HttpServletRequest request) {
		return signIn(request);
	}
}
