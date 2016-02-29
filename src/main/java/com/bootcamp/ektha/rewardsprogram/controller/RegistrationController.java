package com.bootcamp.ektha.rewardsprogram.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bootcamp.ektha.rewardsprogram.form.RegistrationFormDTO;
import com.bootcamp.ektha.rewardsprogram.form.RegistrationFormValidation;
import com.bootcamp.ektha.rewardsprogram.service.MemberService;
import com.bootcamp.ektha.rewardsprogram.service.StoreService;

/**
 * Registration activity is handled here
 * 
 * @author Boot Camp User 06
 *
 */
@Controller
public class RegistrationController {
	private Logger logger = Logger.getLogger(RegistrationController.class);
	
	@Autowired
	private StoreService storeService;
	@Autowired
	private MemberService memberService;

	/**
	 * Error Handling for the Registration
	 */
	@ExceptionHandler(Exception.class)
	public String handleError() {
		return "jsp/error";
	}

	/**
	 * @return the list of store and add to state attribute
	 */
	@ModelAttribute("state")
	public HashMap<String, String> populateStateList() {
		HashMap<String, String> stateList = new HashMap<>();
		stateList.put("SID00105", "California");
		stateList.put("SID00144", "Texas");
		return stateList;
	}

	/**
	 * @param newMember
	 *            binds to RegistrationFormDTO
	 * @return signup page
	 */
	@RequestMapping(value = { "signup", "register.do" }, method = RequestMethod.GET)
	public ModelAndView getSignUpPage(@ModelAttribute("newMember") RegistrationFormDTO newMember,
			HttpServletRequest request) {
		ModelAndView model = null;
		HttpSession session = request.getSession();

		if (session.getAttribute("auth") == "authenticated") {
			model = new ModelAndView("/jsp/welcome");
			model.addObject("title", "You neednot register again");
		} else {
			model = new ModelAndView("/jsp/signup");
			populateStateList();
			model.addObject("title", "New User Sign Up Page");
		}

		return model;

	}

	/**
	 * @param stateId
	 * @return based on stateID param returns the store list adds to the body
	 */
	@RequestMapping(value = "/getStoreList", method = RequestMethod.GET)
	@ResponseBody
	public String getStoreList(@RequestParam(value = "storeKey") String stateId) {
		logger.info("stateId " + stateId);
		String jsonStoreList = storeService.getStoreListByStateJSON(stateId);
		logger.info("Custom JSON " + jsonStoreList);
		return jsonStoreList;
	}

	/**
	 * @param RegistrationFormDTO
	 *            object process the form
	 */
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute("newMember") RegistrationFormDTO newMember,
			BindingResult result, Model model, HttpServletRequest request) {
		
		logger.info("Post register started for " + newMember);
		HttpSession session = request.getSession();
		ModelAndView modelView = null;;

		if(result.hasErrors()){
			modelView = new ModelAndView("/jsp/signup");
			modelView.addObject("title", "Cannot Complete Request");
			logger.error("Errors in Validation for " + newMember.getUsername());
		} else {
			String isSuccess = memberService.addMember(newMember);
			if (!isSuccess.equals("Error")) {
				session.setAttribute("auth", "authenticated");
				modelView = new ModelAndView("/jsp/newuserwelcome");
				modelView.addObject("title", "New User Welcome Page");
				modelView.addObject("memberId", isSuccess);
				logger.info("New Member Registration Success");
			} 
		}

		return modelView;
	}

	/**
	 * Checks whether user exists or not
	 * 
	 * @returns simple text either success or failure
	 */
	@RequestMapping("checkUserExistence")
	@ResponseBody
	public String checkUserExistence(@RequestParam String username) {
		String response = null;

		if (username != null) {
			boolean isExist = memberService.isUserExist(username);
			response = isExist ? "exist" : "notExist";
		}

		return response;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.addValidators(new RegistrationFormValidation());
	}
}
