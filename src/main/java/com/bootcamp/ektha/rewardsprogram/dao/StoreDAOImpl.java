package com.bootcamp.ektha.rewardsprogram.dao;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebService;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.bootcamp.ektha.rewardsprogram.entity.Store;

/**
 * DAO CLASS FOR THE CKSTORE TABLE
 * @author Boot Camp User 06
 *
 */
@WebService(serviceName="Store")
public class StoreDAOImpl implements StoreDAO{
	
    private Logger logger = Logger.getLogger(StoreDAOImpl.class);
    
	@Autowired
	private  SessionFactory sessionFactory;
	
	
	/**
	 * returns the list of the Store
	 * @param stateId
	 * @return
	 */
	@WebMethod
	public List<Store> getStoreList(String stateId) {
		
		logger.info("Searching in STORE DAO...." + stateId);

		Session session = sessionFactory.getCurrentSession();
		
		String hql = "from Store where STATE_ID = :stateId";
		Query query = session.createQuery(hql);
		query.setParameter("stateId", stateId);
		List<Store> strList = query.list();
		
		logger.info("Store List" + strList);
		
		return strList;
	}

}
