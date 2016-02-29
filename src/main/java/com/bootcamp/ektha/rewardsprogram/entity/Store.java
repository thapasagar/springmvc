package com.bootcamp.ektha.rewardsprogram.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ckstore database table.
 * 
 */
@Entity
@Table(name = "CKSTORE")
public class Store implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "STORE_ID")
	private String storeId;

	@Column(name = "STATE_ID")
	private String stateId;

	@Column(name = "STORE_CITY")
	private String storeCity;

	@Column(name = "STORE_NAME")
	private String storeName;

	@Column(name = "STORE_STREET")
	private String storeStreet;

	@Column(name = "STORE_SUITE")
	private String storeSuite;

	public Store() {
	}

	/*@Override
	public String toString() {
		return "Store [storeId=" + storeId + ", stateId=" + stateId + ", storeCity=" + storeCity + ", storeName="
				+ storeName + ", storeStreet=" + storeStreet + ", storeSuite=" + storeSuite + "]";
	}
*/
	public String getStoreId() {
		return this.storeId;
	}

	public void setStoreId(String storeId) {
		this.storeId = storeId;
	}

	public String getStateId() {
		return this.stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}

	public String getStoreCity() {
		return this.storeCity;
	}

	public void setStoreCity(String storeCity) {
		this.storeCity = storeCity;
	}

	public String getStoreName() {
		return this.storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreStreet() {
		return this.storeStreet;
	}

	public void setStoreStreet(String storeStreet) {
		this.storeStreet = storeStreet;
	}

	public String getStoreSuite() {
		return this.storeSuite;
	}

	public void setStoreSuite(String storeSuite) {
		this.storeSuite = storeSuite;
	}

}