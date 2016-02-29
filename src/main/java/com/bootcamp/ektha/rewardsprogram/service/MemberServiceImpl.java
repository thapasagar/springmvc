package com.bootcamp.ektha.rewardsprogram.service;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;

import com.bootcamp.ektha.rewardsprogram.dao.MemberDAO;
import com.bootcamp.ektha.rewardsprogram.entity.Address;
import com.bootcamp.ektha.rewardsprogram.entity.Member;
import com.bootcamp.ektha.rewardsprogram.entity.MemberPersonalDetails;
import com.bootcamp.ektha.rewardsprogram.entity.User;
import com.bootcamp.ektha.rewardsprogram.form.RegistrationFormDTO;

@Transactional
public class MemberServiceImpl implements MemberService {
    private Logger logger = Logger.getLogger(MemberServiceImpl.class);
	
	private MemberDAO memberDAO;

	/**
	 * @return the memberDAO
	 */
	public MemberDAO getMemberDAO() {
		return memberDAO;
	}

	/**
	 * @param memberDAO
	 *            the memberDAO to set
	 */
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}

	public MemberServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Transactional
	@Override
	public String addMember(RegistrationFormDTO newMember) {
		Member member = convertDtoToDao(newMember);

		boolean isSuccess = memberDAO.registerMember(member);
		logger.info(isSuccess);
		if (isSuccess) {
			return member.getMemberId();
		} else {
			return "Error";
		}
	}

	/**
	 * Check The User Existence in Member Table Same functionality is also done
	 * in UserDAOImpl
	 */
	@Override
	public boolean isUserExist(String username) {
		boolean isExist = false;

		isExist = memberDAO.checkUser(username);
		logger.info(username + "  " + isExist);

		return isExist;
	}

	/**
	 * Converts The DTO object to Member Object
	 * 
	 * @param newMember
	 * @return
	 */
	public Member convertDtoToDao(RegistrationFormDTO newMember) {
		logger.info("I'm Here");
		Member member = new Member();
		String memberId = member.getMemberId();
		User user = new User();
		Address address = new Address();
		MemberPersonalDetails personalDetails = new MemberPersonalDetails();

		// hold username And password
		user.setUsername(newMember.getUsername());
		user.setPassword(newMember.getPassword());

		// hold information on address table
		address.setMemberId(memberId);
		address.setStreet(newMember.getAddressOne() + " " + newMember.getAddressTwo());
		address.setCity(newMember.getMemberCity());
		address.setCountryId(newMember.getMemberCountry());
		address.setStateId(newMember.getMemberStates());

		if (newMember.getMemberZip() != null)
			try {
				address.setZip(Integer.valueOf(newMember.getMemberZip()));
			} catch (NumberFormatException e) {
				logger.info("Cannot Parse String to num");
			}

		// Personal Details information is hold
		// income is translated
		personalDetails.setMemberId(memberId);

		if (newMember.getHouseholdIncome() != null)
			try {
				int[] incomeRange = getIncomeRange(newMember.getHouseholdIncome());
				personalDetails.setMaxIncome(incomeRange[1]);
				personalDetails.setMinIncome(incomeRange[0]);
			} catch (NumberFormatException e) {
				logger.info("Cannot Parse String to num");
			}

		personalDetails.setDobDay(Integer.valueOf(newMember.getBirthDay()));
		personalDetails.setDobMonth(newMember.getBirthMonth());
		personalDetails.setGender(newMember.getGender());
		personalDetails.setMaritialStatus(newMember.getMaritialStatus());

		// Member Information is hold
		//member.setLoginInfo(user);
		member.setFirstName(newMember.getFirstName());
		member.setLastName(newMember.getLastName());
		member.setEmail(newMember.getEmail());
		member.setUsername(newMember.getUsername());
		member.setPreferredStore(newMember.getPreferredStore());
		member.setPhone(newMember.getPhoneNumber());

		member.setLoginInfo(user);
		member.setMemberPersonalDetails(personalDetails);
		member.setCkmemberAddress(address);
		logger.info(member);
		return member;
	}

	private int[] getIncomeRange(String incomeRange) {
		int[] range = new int[2];
		switch (incomeRange) {
		case "income2540":
			range[0] = 25000;
			range[1] = 40000;
			break;
		case "income4055":
			range[0] = 40000;
			range[1] = 55000;
			break;
		case "income5570":
			range[0] = 55000;
			range[1] = 70000;
			break;
		case "income7085":
			range[0] = 70000;
			range[1] = 85000;
			break;
		case "income85100":
			range[0] = 85000;
			range[1] = 100000;
			break;
		case "income101":
			range[0] = 101000;
			range[1] = 999999;
			break;
		}

		return range;
	}

}
