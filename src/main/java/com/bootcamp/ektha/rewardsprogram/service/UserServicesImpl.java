package com.bootcamp.ektha.rewardsprogram.service;

import org.apache.log4j.Logger;
import org.springframework.transaction.annotation.Transactional;

import com.bootcamp.ektha.rewardsprogram.dao.UserDAO;
import com.bootcamp.ektha.rewardsprogram.entity.User;

/**
 * User Service to validate user
 * 
 * @author Boot Camp User 06
 *
 */
public class UserServicesImpl implements UserServices {
	
    private Logger logger = Logger.getLogger(UserServicesImpl.class);
	
	private UserDAO userDAO;

	/**
	 * @return the userDAO
	 */
	public UserDAO getUserDAO() {
		return userDAO;
	}

	/**
	 * @param userDAO
	 *            the userDAO to set
	 */
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Transactional
	@Override
	public boolean validateUser(User user) {

		User u = userDAO.findByUserName(user);

		if (u != null && user != null) {
			if (user.getPassword().equals(u.getPassword())) {
				logger.info("Credential Validated");
				return true;
			} else {
				logger.error("Invalid combination of username and Password for " + u.getUsername());
				return false;
			}
		} else {
			logger.error("Invalid User");
			return false;
		}

	}

}
