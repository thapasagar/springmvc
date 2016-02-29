package com.bootcamp.ektha.rewardsprogram.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ckmember_address database table.
 * 
 */
@Entity
@Table(name = "ckmember_address")
public class Address implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "MEMBER_ID")
	private String memberId;

	private String city;

	@Column(name = "COUNTRY_ID")
	private String countryId;

	@Column(name = "STATE_ID")
	private String stateId;

	private String street;

	private int zip;

	public Address() {
	}

	@Override
	public String toString() {
		return "Address [memberId=" + memberId + ", city=" + city + ", countryId=" + countryId + ", stateId=" + stateId
				+ ", street=" + street + ", zip=" + zip + "]";
	}

	public String getMemberId() {
		return this.memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountryId() {
		return this.countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getStateId() {
		return this.stateId;
	}

	public void setStateId(String stateId) {
		this.stateId = stateId;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getZip() {
		return this.zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

}