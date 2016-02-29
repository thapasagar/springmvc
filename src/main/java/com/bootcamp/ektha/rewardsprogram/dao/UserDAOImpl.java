package com.bootcamp.ektha.rewardsprogram.dao;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.bootcamp.ektha.rewardsprogram.entity.User;

/**
 * USER DAO IMPLEMENTATION
 * 
 * @author Boot Camp User 06
 *
 */
public class UserDAOImpl implements UserDAO {

    private Logger logger = Logger.getLogger(UserDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * Finds the user by Id and returns the User
	 */
	@Override
	public User findByUserName(User user) {

		System.out.println("Searching in DAO...." + user.getUsername());

		Session session = sessionFactory.getCurrentSession();
	 
		User usr = (User) session.get(User.class, new String(user.getUsername()));

		System.out.println(usr);
		 
		return usr;
	}

}
