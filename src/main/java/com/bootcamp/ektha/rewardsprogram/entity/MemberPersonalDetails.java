package com.bootcamp.ektha.rewardsprogram.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * The persistent class for the ckmember_personal_details database table.
 * 
 */
@Entity
@Table(name="ckmember_personal_details")
public class MemberPersonalDetails implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="MEMBER_ID")
	private String memberId;

	@Column(name="DOB_DAY")
	private int dobDay;

	@Column(name="DOB_MONTH")
	private String dobMonth;

	private String gender;

	@Column(name="MARITIAL_STATUS")
	private String maritialStatus;

	@Column(name="MAX_INCOME")
	private int maxIncome;

	@Column(name="MIN_INCOME")
	private int minIncome;

	public MemberPersonalDetails() {
	}
	
	@Override
	public String toString() {
		return "MemberPersonalDetails [memberId=" + memberId + ", dobDay=" + dobDay + ", dobMonth=" + dobMonth
				+ ", gender=" + gender + ", maritialStatus=" + maritialStatus + ", maxIncome=" + maxIncome
				+ ", minIncome=" + minIncome + "]";
	}



	public String getMemberId() {
		return this.memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getDobDay() {
		return this.dobDay;
	}

	public void setDobDay(int dobDay) {
		this.dobDay = dobDay;
	}

	public String getDobMonth() {
		return this.dobMonth;
	}

	public void setDobMonth(String dobMonth) {
		this.dobMonth = dobMonth;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritialStatus() {
		return this.maritialStatus;
	}

	public void setMaritialStatus(String maritialStatus) {
		this.maritialStatus = maritialStatus;
	}

	public int getMaxIncome() {
		return this.maxIncome;
	}

	public void setMaxIncome(int maxIncome) {
		this.maxIncome = maxIncome;
	}

	public int getMinIncome() {
		return this.minIncome;
	}

	public void setMinIncome(int minIncome) {
		this.minIncome = minIncome;
	}

}