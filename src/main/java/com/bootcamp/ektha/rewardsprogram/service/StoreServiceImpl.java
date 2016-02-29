package com.bootcamp.ektha.rewardsprogram.service;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import org.apache.log4j.Logger;
import org.springframework.transaction.annotation.Transactional;

import com.bootcamp.ektha.rewardsprogram.dao.StoreDAO;
import com.bootcamp.ektha.rewardsprogram.entity.Store;
import com.bootcamp.ektha.rewardsprogram.util.MissingParam;

/**
 * Service class for store related function
 * 
 * @author Boot Camp User 06
 *
 */
@WebService(endpointInterface = "com.bootcamp.ektha.rewardsprogram.service.StoreService")
public class StoreServiceImpl implements StoreService {
	
    private Logger logger = Logger.getLogger(StoreServiceImpl.class);
	
	private StoreDAO storeDAO;

	/**
	 * @return the storeDAO
	 */
	public StoreDAO getStoreDAO() {
		return storeDAO;
	}

	/**
	 * @param storeDAO
	 *            the storeDAO to set
	 */
	public void setStoreDAO(StoreDAO storeDAO) {
		this.storeDAO = storeDAO;
	}


	/**
	 * Gets list of Store as List
	 * @throws MissingParam 
	 */
	@Transactional
	public ArrayList<Store> getStoreListByState(String stateId) throws MissingParam {
		List<Store> storeList = new ArrayList<>();
		
		if ( stateId == null || stateId.isEmpty()){
			throw new MissingParam();
		}
		
		storeList = storeDAO.getStoreList(stateId);
		logger.info(storeList);
		return (ArrayList<Store>) storeList;

	}

	/**
	 * Gets the Store list and transform into Json Format
	 */
	@Transactional
	public String getStoreListByStateJSON(String stateId) {

		ArrayList<Store> storeList = (ArrayList<Store>) storeDAO.getStoreList(stateId);

		StringBuilder sb = new StringBuilder();

		if (storeList.isEmpty())
			return "[]";
		for (Store store : storeList) {
			sb.append("{\"" + store.getStoreId() + "\":\"" + store.getStoreName() + ", " + store.getStoreStreet() + ", "
					+ store.getStoreSuite() + ", " + store.getStoreCity() + "\"}, ");
		}
		sb = sb.deleteCharAt(sb.length() - 2);
		return "[" + sb.toString() + "]";

	}
}
