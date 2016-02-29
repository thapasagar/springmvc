package com.bootcamp.ektha.rewardsprogram.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.spy;
import static org.mockito.Mockito.when;

import org.junit.Before;
import org.junit.Test;

import com.bootcamp.ektha.rewardsprogram.dao.MemberDAOImpl;
import com.bootcamp.ektha.rewardsprogram.entity.Address;
import com.bootcamp.ektha.rewardsprogram.entity.Member;
import com.bootcamp.ektha.rewardsprogram.entity.MemberPersonalDetails;
import com.bootcamp.ektha.rewardsprogram.entity.User;
import com.bootcamp.ektha.rewardsprogram.form.RegistrationFormDTO;

public class MemberServiceImplTest {
	
	private MemberServiceImpl memberService;
	
	private MemberDAOImpl mockMemberDao;
	private RegistrationFormDTO newUser;
	private Member member;
	private String memberId;
	
	@Before
	public void setUp() throws Exception {
		mockMemberDao = mock(MemberDAOImpl.class);
		memberService = spy(new MemberServiceImpl());
		member = new Member();
		memberId = member.getMemberId();
		newUser = new RegistrationFormDTO();
		User user = new User();
		MemberPersonalDetails personalDetails = new MemberPersonalDetails();
		Address address = new Address();
		
		newUser.setStoreCountries("sagar");
		newUser.setStoreStates("sagar");
		newUser.setPreferredStore("sagar"); 
		newUser.setUsername("sagar");
		newUser.setPassword("sagar");
		newUser.setConfirmPassword("sagar");
		newUser.setFirstName("sagar");
		newUser.setLastName("sagar");
		newUser.setMemberCountry("sagar");
		newUser.setMemberStates("sagar");
		newUser.setAddressOne("sagar");
		newUser.setAddressTwo("sagar");
		newUser.setMemberCity("sagar");
		newUser.setMemberZip("12345");
		newUser.setEmail("sagar");
		newUser.setConfirmEmail("sagar");
		newUser.setPhoneNumber("123456");
		newUser.setGender("m");
		newUser.setMaritialStatus("sagar");
		newUser.setBirthMonth("sagar");
		newUser.setBirthDay("12");
		newUser.setHouseholdIncome("income2540");
		
		// Set Member
		user.setUsername("sagar");
		user.setPassword("sagar");

		// hold information on address table
		address.setMemberId(memberId);
		address.setStreet("sagar" + " " + "sagar");
		address.setCity("sagar");
		address.setZip(12345);
		address.setCountryId("sagar");
		address.setStateId("sagar");

		// Personal Details information is hold
		// income is translated
		personalDetails.setMemberId(memberId);
		personalDetails.setDobDay(12);
		personalDetails.setDobMonth("sagar");
		personalDetails.setGender("m");
		personalDetails.setMaxIncome(40000);
		personalDetails.setMinIncome(25000);
		personalDetails.setMaritialStatus("sagar");

		// Member Information is hold
		member.setLoginInfo(user);
		member.setFirstName("sagar");
		member.setLastName("sagar");
		member.setEmail("sagar");
		member.setPhone("123456");
		member.setUsername("sagar");
		member.setPreferredStore("sagar");

		member.setLoginInfo(user);
		member.setCkmemberAddress(address);
		
	}

	@Test
	public void testAddMemberSuccess(){
		memberService.setMemberDAO(mockMemberDao);
		doReturn(member).when(memberService).convertDtoToDao(newUser);
		when(mockMemberDao.registerMember(member)).thenReturn(true);
		assertEquals(memberId, memberService.addMember(newUser));
		
	}

	@Test
	public void testAddMemberFailure() {
		memberService.setMemberDAO(mockMemberDao);
		doReturn(member).when(memberService).convertDtoToDao(newUser);
		when(mockMemberDao.registerMember(member)).thenReturn(false);
		assertEquals("Error", memberService.addMember(newUser));

	}


}
