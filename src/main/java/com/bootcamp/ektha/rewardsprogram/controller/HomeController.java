package com.bootcamp.ektha.rewardsprogram.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bootcamp.ektha.rewardsprogram.entity.User;

/**
 * Handles all the view except for login and registration
 * @author Boot Camp User 06
 *
 */
@Controller
public class HomeController {
	
	private Logger logger = Logger.getLogger(HomeController.class);
	/**
	 * For the index Page
	 * @returns Home Page
	 */
	@RequestMapping(value = { "/", "index" })
	public ModelAndView getHomePage() {
		ModelAndView model = new ModelAndView("index");
		model.addObject("title", "HomePage");
        logger.info("This is an entry point");
		
		return model;
	}

	/**
	 * @returns About Page
	 */
	@RequestMapping(value = "/about")
	public ModelAndView getAboutPage() {
		ModelAndView model = new ModelAndView("/jsp/about");
		model.addObject("title", "About CK");
		 logger.info("This is an about page");
		return model;
	}

	/**
	 * @returns Store Locator Page
	 */
	@RequestMapping(value = "/storelocator")
	public ModelAndView getStoreLocatorPage() {
		ModelAndView model = new ModelAndView("/jsp/storelocator");
		model.addObject("title", "Locate a Store near you");
		return model;
	}

	/**
	 * @returns Terms and Condition Page
	 */
	@RequestMapping(value = "/terms")
	public ModelAndView getTermsConditionPage() {
		ModelAndView model = new ModelAndView("/jsp/terms");
		model.addObject("title", "Terms and Conditions");
		return model;
	}

	/**
	 * @returns the page that has both signin and signup
	 */
	@RequestMapping(value = "/signinSignup")
	public String getLoginChoicePage(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();

		if (session.getAttribute("auth") == "authenticated") {
			return "/jsp/welcome";
		} else {
			model.addAttribute("user", new User());
			model.addAttribute("title", "Sign In || Sign up ");
			return "/jsp/promptCard";
		}

	}
	
	/**
	 * Sign out and invalidate session
	 */
	@RequestMapping("/logout")
	public String invalidateUserSession(HttpSession session){
		session.invalidate();
		logger.info("Session Closed");
		return "index";
	}
	
	
}
