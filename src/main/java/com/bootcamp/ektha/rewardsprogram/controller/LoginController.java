package com.bootcamp.ektha.rewardsprogram.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bootcamp.ektha.rewardsprogram.entity.User;
import com.bootcamp.ektha.rewardsprogram.form.UserValidation;
import com.bootcamp.ektha.rewardsprogram.service.UserServices;

/**
 * Controller that handles the Login Functionality
 * 
 * @author Boot Camp User 06
 *
 */
@Controller
public class LoginController {
	private Logger logger = Logger.getLogger(LoginController.class);

	@Autowired
	UserServices userServices;

	/**
	 * any request for signin or login
	 * 
	 * @returns the login page
	 */
	@RequestMapping(value = { "/login", "/signin", "/login.do" }, method = RequestMethod.GET)
	public String getSignInPage(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();

		if (session.getAttribute("auth") == "authenticated") {
			model.addAttribute("title", "Welome Again");
			return "/jsp/welcome";
		} else {
			model.addAttribute("user", new User());
			model.addAttribute("title", "Sign In to Check Rewards");
			return "/jsp/loginpage";
		}
	}

	/**
	 * @param
	 * @returns welcome page if success else signin page
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String checkUser(@Valid @ModelAttribute("user") User user, BindingResult results, Model model,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		boolean valid = false;
		logger.info(user);
		;

		if (!results.hasErrors()) {
			valid = userServices.validateUser(user);
			if (valid) {
				logger.info("Valid User and No errors");
				session.setAttribute("auth", "authenticated");
				return "/jsp/welcome";
			}
			model.addAttribute("error", "Invalid Username And Password");
			logger.error("Invalid user but No errors");

		} else {
			logger.error("Errors");
			return "/jsp/loginpage";
		}

		return "/jsp/loginpage";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new UserValidation());
	}

}
