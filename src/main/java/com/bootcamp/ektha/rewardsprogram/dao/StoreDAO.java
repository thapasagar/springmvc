package com.bootcamp.ektha.rewardsprogram.dao;

import java.util.List;

import com.bootcamp.ektha.rewardsprogram.entity.Store;

public interface StoreDAO {
	public List<Store> getStoreList(String stateId);
}
