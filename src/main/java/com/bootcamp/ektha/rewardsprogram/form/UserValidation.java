package com.bootcamp.ektha.rewardsprogram.form;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.bootcamp.ektha.rewardsprogram.entity.User;
import com.bootcamp.ektha.rewardsprogram.service.UserServices;
/**
 * Validation class for the User
 * @author Boot Camp User 06
 *
 */
public class UserValidation implements Validator{
	@Autowired
	UserServices userServices;
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		User user = (User) target;
		
		if(user.getUsername().length() > 0 && user.getUsername().length() < 5){
			errors.rejectValue("username", "username", "The UserName is too short");
		}
		
	}

}
