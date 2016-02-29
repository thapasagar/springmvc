package com.bootcamp.ektha.rewardsprogram.service;

import java.util.ArrayList;

import javax.jws.WebMethod;
import javax.jws.WebService;

import com.bootcamp.ektha.rewardsprogram.entity.Store;
import com.bootcamp.ektha.rewardsprogram.util.MissingParam;

@WebService
public interface StoreService {
	@WebMethod
	public ArrayList<Store> getStoreListByState(String stateId) throws MissingParam;
	@WebMethod
	public String getStoreListByStateJSON(String stateId);
}
