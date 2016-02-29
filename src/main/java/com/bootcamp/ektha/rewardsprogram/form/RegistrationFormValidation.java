package com.bootcamp.ektha.rewardsprogram.form;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

/**
 * Registration Form Validation
 * @author Boot Camp User 06
 *
 */
@Component
public class RegistrationFormValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return RegistrationFormDTO.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		RegistrationFormDTO regForm = (RegistrationFormDTO) target;
		
		if(regForm.getUsername().length() > 0 && regForm.getUsername().length() < 5){
			errors.rejectValue("username", "username", "Username is too short");
		}
		
		if(regForm.getPassword().length() > 0 && regForm.getPassword().length() < 8){
			errors.rejectValue("password", "password", "Password cannot be less than 8 Characters");
		}
		
		if(regForm.getPreferredStore().isEmpty()){
			errors.rejectValue("preferredStore", "preferredStore", "Please Select preferred Store");
		}
	}
	

}
