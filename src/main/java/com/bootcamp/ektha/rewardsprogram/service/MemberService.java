package com.bootcamp.ektha.rewardsprogram.service;

import com.bootcamp.ektha.rewardsprogram.form.RegistrationFormDTO;

public interface MemberService {
	public String addMember(RegistrationFormDTO newMember);
	public boolean isUserExist(String username);
}
