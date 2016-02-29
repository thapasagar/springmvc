package com.bootcamp.ektha.rewardsprogram.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * The persistent class for the states database table.
 * 
 */
@Entity
@Table(name="states")
public class State implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="STATE_ID")
	private String stateId;

	@Column(name="COUNTRY_ID")
	private String countryId;

	@Column(name="STATE_ABB")
	private String stateAbb;

	@Column(name="STATE_NAME")
	private String stateName;

	public State() {
	}
	
	public String getStateId() {
		return this.stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}

	public String getCountryId() {
		return this.countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getStateAbb() {
		return this.stateAbb;
	}

	public void setStateAbb(String stateAbb) {
		this.stateAbb = stateAbb;
	}

	public String getStateName() {
		return this.stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

}