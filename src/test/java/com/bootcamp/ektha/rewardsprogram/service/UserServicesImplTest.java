/**
 * 
 */
package com.bootcamp.ektha.rewardsprogram.service;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import org.junit.Before;
import org.junit.Test;

import com.bootcamp.ektha.rewardsprogram.dao.UserDAOImpl;
import com.bootcamp.ektha.rewardsprogram.entity.User;

/**
 * @author Boot Camp User 06
 *	
 */
public class UserServicesImplTest {
	private UserServicesImpl userServices;
	private UserDAOImpl mockUserDAO;
	private User user;
	private User userValid;
	private User userInvalid;
	
	@Before
	public void setUp() throws Exception {
		mockUserDAO = mock(UserDAOImpl.class);
		userServices = new UserServicesImpl();
		userServices.setUserDAO(mockUserDAO);
		
		user = new User();
		user.setUsername("12345");
		user.setPassword("12345");
		
		userValid = new User();
		userValid.setPassword("12345");
		userValid.setUsername("12345");
		
		userInvalid = new User();
		userInvalid.setPassword("asdasd");
		userInvalid.setUsername("asdsadad");
	}
	
	/**
	 * Test method for Valid UserName
	 * {@link com.bootcamp.ektha.rewardsprogram.service.UserServicesImpl#validateUser(com.bootcamp.ektha.rewardsprogram.entity.User)}
	 * .
	 */
	@Test
	public void testValidateUserSuccess() {
		when(mockUserDAO.findByUserName(user)).thenReturn(userValid);
		assertEquals(true, userServices.validateUser(user));
	}
	
	/**
	 * Test method for Invalid Username
	 * {@link com.bootcamp.ektha.rewardsprogram.service.UserServicesImpl#validateUser(com.bootcamp.ektha.rewardsprogram.entity.User)}
	 * .
	 */
	@Test
	public void testValidateUserFailure() {
		when(mockUserDAO.findByUserName(user)).thenReturn(userInvalid);
		assertEquals(false, userServices.validateUser(user));
	}
	
	
}
