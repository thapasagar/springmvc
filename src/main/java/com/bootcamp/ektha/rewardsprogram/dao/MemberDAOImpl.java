package com.bootcamp.ektha.rewardsprogram.dao;


import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.bootcamp.ektha.rewardsprogram.entity.Member;

/**
 * DAO implementation to register member
 * 
 * @author Boot Camp User 06
 *
 */
public class MemberDAOImpl implements MemberDAO {
	private Logger logger = Logger.getLogger(MemberDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	/**
	 * Register Member persist data into member table as well as address,
	 * login_info and member_personal_details table
	 */
	@Override
	public boolean registerMember(Member member) {
		Session session = null;

		try {
			session = sessionFactory.getCurrentSession();
			session.save(member);

		} catch (Exception e) {
			return false;
		}

		logger.info("Generating MemberID " + member.getMemberId());
		return true;
	}

	/**
	 * Check Whether user exist or not
	 */
	@Override
	public boolean checkUser(String username) {
		boolean result = false;

		Session session = sessionFactory.getCurrentSession();
		Query query = (Query) session.createQuery("from Member where username=?");

		Member member = (Member) query.setString(0, username).uniqueResult();
		if (member != null) {
			result = true;
			logger.info("Member Exists");
		} 

		return result;

	}

}
